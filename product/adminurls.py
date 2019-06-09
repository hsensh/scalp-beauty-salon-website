from django.urls import path
from .views import product_admin_view, edit_product_admin_view, delete_product_admin_view

urlpatterns = [
    path('products/', product_admin_view, name='product-admin'),
    path('products/<int:id>/edit/', edit_product_admin_view, name='edit-product-admin'),
    path('products/<int:id>/delete/', delete_product_admin_view, name='delete-product-admin'),
]
