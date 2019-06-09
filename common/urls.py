from django.urls import path
from .views import unauthorized_view, login_required_view

urlpatterns = [
    path('', unauthorized_view, name='unauthorized'),
    path('login-required/', login_required_view, name='login-required'),
]