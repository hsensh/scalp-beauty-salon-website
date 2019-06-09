from django.urls import path
from .views import product_type_view, product_view

urlpatterns = [
    path('', product_type_view, name='product-type'),
    path('<int:id>/', product_view, name='product'),
]