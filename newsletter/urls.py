from django.urls import path
from .views import newsletter_view, newsletter_subscribe_view

urlpatterns = [
    path('<str:type>', newsletter_view, name='newsletter'),
    path('subscribe/', newsletter_subscribe_view, name='newsletter-subscribe'),
]