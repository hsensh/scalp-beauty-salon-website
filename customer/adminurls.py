from django.urls import path
from .views import user_admin_view

urlpatterns = [
    path('', user_admin_view, name='user-admin'),
]
