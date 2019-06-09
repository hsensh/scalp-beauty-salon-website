from django.urls import path
from .views import picture_admin_view, delete_picture_admin_view, edit_picture_admin_view

urlpatterns = [
    path('', picture_admin_view, name='picture-admin'),
    path('<int:id>/delete/', delete_picture_admin_view, name='delete-picture-admin'),
    path('<int:id>/edit/', edit_picture_admin_view, name='edit-picture-admin'),
]