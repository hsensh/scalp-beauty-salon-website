from django.urls import path
from .views import (
    cart_view, 
    product_add_to_cart_view, 
    checkout_view,
    delete_cart_item_view,
)

urlpatterns = [
    path('', cart_view, name='cart'),
    path('<int:product_id>/add', product_add_to_cart_view, name='product-add-to-cart'),
    path('checkout/', checkout_view, name='checkout'),
    path('delete/<int:id>', delete_cart_item_view, name='delete-cart-item'),
]
