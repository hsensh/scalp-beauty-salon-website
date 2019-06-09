from django.urls import path
from .views import (
    service_admin_view,
    service_type_admin_view,
    edit_service_admin_view,
    edit_service_type_admin_view,
    delete_service_admin_view,
    delete_service_type_admin_view,
)

urlpatterns = [
    path('', service_admin_view, name='service-admin'),
    path('<int:id>/delete/', delete_service_admin_view, name='delete-service-admin'),
    path('<int:id>/edit/', edit_service_admin_view, name='edit-service-admin'),
    path('service-types/', service_type_admin_view, name='service-type-admin'),
    path('service-types/<int:id>/delete/', delete_service_type_admin_view, name='delete-service-type-admin'),
    path('service-types/<int:id>/edit/', edit_service_type_admin_view, name='edit-service-type-admin'),
]
