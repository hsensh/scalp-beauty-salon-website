from django.urls import path
from .views import article_view

urlpatterns = [
    path('', article_view, name='blog'),
]