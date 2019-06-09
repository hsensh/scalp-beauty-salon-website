from django.urls import path
from .views import testimonials_admin_view

urlpatterns = [
    path('', testimonials_admin_view, name='testimonials-admin'),
]
