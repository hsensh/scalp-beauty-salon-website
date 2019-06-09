from django.urls import path
from .views import (
    article_admin_view, 
    edit_article_admin_view, 
    delete_article_admin_view, 
    add_article_image_admin_view, 
    delete_article_image_admin_view,
)

urlpatterns = [
    path('', article_admin_view, name='article-admin'),
    path('<int:id>/delete/', delete_article_admin_view, name='delete-article-admin'),
    path('<int:id>/edit/', edit_article_admin_view, name='edit-article-admin'),
    path('image/<int:id>/delete/', delete_article_image_admin_view, name='delete-article-image-admin'),
    path('image/add/', add_article_image_admin_view, name='add-article-image-admin'),
]
