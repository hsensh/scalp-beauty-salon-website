from django.urls import path
from .views import (
    appointment_admin_view, 
    cancel_appointment_admin_view, 
    reject_cancellation_request_appointment_admin_view,
    edit_appointment_time_admin_view,
)

urlpatterns = [
    path('', appointment_admin_view, name='appointment-admin'),
    path('<int:id>/cancel/', cancel_appointment_admin_view, name='cancel-appointment-admin'),
    path('<int:id>/reject/', reject_cancellation_request_appointment_admin_view, name='reject-cancellation-request-appointment-admin'),
    path('edit-times', edit_appointment_time_admin_view, name='edit-appointment-time-admin'),
]
