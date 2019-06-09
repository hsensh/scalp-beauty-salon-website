from django.urls import path, include
from .views import service_type_view, service_view

urlpatterns = [
    path('', service_type_view, name='service-type'),
    path('<int:id>/', service_view, name='service'),
]