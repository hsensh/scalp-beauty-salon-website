from django.shortcuts import render, redirect
from .models import Cart, CartProduct
from product.models import Product
from customer.models import CustomerProfile
from receipt.models import Receipt, ReceiptProduct
from decorators import user_required
from django.db import transaction

# Create your views here.
@user_required
def cart_view(request):
    cart, created = Cart.objects.get_or_create(user=CustomerProfile.objects.get(user=request.user))
    products = cart.product.all()
    context = {
        'cart': cart,
        'products': products,
    }
    return render(request, 'cart.html', context)

@user_required
def product_add_to_cart_view(request, product_id):
    cart, created = Cart.objects.get_or_create(user=CustomerProfile.objects.get(user=request.user))
    product = Product.objects.get(id=product_id)
    try:
        cart_product = CartProduct.objects.get(product=product, cart=cart)
        cart_product.quantity += 1
        cart_product.save()
    except:
        cart_product = CartProduct.objects.create(product=product, cart=cart)
        cart_product.save()
        
    if product.discounted_price:
        cart.total_price += product.discounted_price
    else:
        cart.total_price += product.price
    cart.save()
    return redirect('cart')

@transaction.atomic
@user_required
def checkout_view(request):
    cart, created = Cart.objects.get_or_create(user=CustomerProfile.objects.get(user=request.user))
    receipt = Receipt.objects.create(
        user=cart.user,
        total_price=cart.total_price,
    )
    receipt.save()
    for item in cart.cartproduct_set.all():
        receipt_product = ReceiptProduct.objects.create(product=item.product, receipt=receipt, quantity=item.quantity)
        receipt.receiptproduct__set = receipt_product
    cart.product.clear()
    cart.total_price = 0
    cart.save()
    return redirect('receipt')

@transaction.atomic
@user_required
def delete_cart_item_view(request, id):
    cart = Cart.objects.get(user__user=request.user)
    cart_product = CartProduct.objects.get(cart=cart, product=Product.objects.get(id=id))
    if cart_product.product.discounted_price:
        cart.total_price -= cart_product.product.discounted_price
    else:
        cart.total_price -= cart_product.product.price
    cart.save()
    if cart_product.quantity == 1:
        cart_product.delete()
    if cart_product.quantity > 1:
        cart_product.quantity -= 1
        cart_product.save()
    return redirect('cart')

