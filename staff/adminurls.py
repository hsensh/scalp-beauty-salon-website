from django.urls import path
from .views import staff_view, signup_staff_view, delete_staff_view

urlpatterns = [
    path('', staff_view, name='staff-admin'),
    path('signup', signup_staff_view, name='signup-staff-admin'),
    path('<int:id>/delete', delete_staff_view, name='delete-staff-admin'),
]