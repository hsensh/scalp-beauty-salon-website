from django.urls import path
from .views import receipt_admin_view

urlpatterns = [
    path('', receipt_admin_view, name='receipt-admin'),
]
