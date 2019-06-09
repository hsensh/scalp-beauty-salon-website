from django.urls import path
from .views import reviews_admin_view

urlpatterns = [
    path('', reviews_admin_view, name='reviews-admin'),
]
