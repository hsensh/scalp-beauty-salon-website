from django.urls import path
from .views import (
    home_picture_admin_view, 
    edit_home_picture_admin_view, 
    delete_home_picture_admin_view,
    edit_map_location_text_admin_view,
)

urlpatterns = [
    path('home-pictures/', home_picture_admin_view, name='home-picture-admin'),
    path('home-pictures/<int:id>/edit/', edit_home_picture_admin_view, name='edit-home-picture-admin'),
    path('home-pictures/<int:id>/delete/', delete_home_picture_admin_view, name='delete-home-picture-admin'),
    path('edit-map-location-text', edit_map_location_text_admin_view, name='edit-map-location-text-admin'),
]
