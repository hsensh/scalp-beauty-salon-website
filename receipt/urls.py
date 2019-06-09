from django.urls import path
from receipt.views import receipt_view

urlpatterns = [
    path('', receipt_view, name='receipt'),
]