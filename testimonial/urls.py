from django.urls import path
from .views import testimonial_view, give_testimonial_view, testimonial_staff_view

urlpatterns = [
    path('', testimonial_view, name='testimonial'),
    path('<int:id>/', give_testimonial_view, name='give-testimonial'),
    path('staff/', testimonial_staff_view, name='testimonial-staff'),
]