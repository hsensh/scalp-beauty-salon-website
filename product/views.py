from django.shortcuts import render
from .models import Product
from .forms import ProductForm
from service.models import ServiceType
from manage_site.views import admin_view, edit_admin_view, delete_admin_view
from decorators import admin_required

# Create your views here.

def product_type_view(request):
    objects = ServiceType.objects.all()
    context = {
        'objects': objects[::-1],
    }
    return render(request, 'product_types.html', context)

def product_view(request, id):
    males = Product.objects.filter(service_type__id__exact=id, gender='Male')
    females = Product.objects.filter(service_type__id__exact=id, gender='Female')
    both = Product.objects.filter(service_type__id__exact=id, gender='Unisex')
    context = {
        'males': males[::-1],
        'females': females[::-1],
        'both': both[::-1],
    }
    return render(request, 'products.html', context)

# region product admin

@admin_required
def product_admin_view(request):
    return admin_view(request, 'product', Product, ProductForm)


@admin_required
def edit_product_admin_view(request, id):
    return edit_admin_view(request, id, 'product', Product, ProductForm)


@admin_required
def delete_product_admin_view(request, id):
    return delete_admin_view(request, id, 'product', Product)

# endregion
