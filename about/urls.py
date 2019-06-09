from django.urls import path
from .views import about_view

urlpatterns = [
    path('', about_view, name='about'),
]
