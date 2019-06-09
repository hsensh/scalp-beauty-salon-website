from django.urls import path
from .views import reports_admin_view

urlpatterns = [
    path('',reports_admin_view, name='reports-admin'),
]