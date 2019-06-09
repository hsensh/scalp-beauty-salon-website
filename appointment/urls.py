from django.urls import path
from .views import (
    appointment_book_view, 
    appointment_view,
    request_cancellation_appointment_view,
    add_event_to_calendar_view,
    access_authorization_view,
    appointment_calendar_view,
    send_event_as_text_message_view,
    send_event_as_text_message_prompt_view,
)

urlpatterns = [
    path('<int:service_type_id>/<int:service_id>', appointment_book_view, name='appointment-book'),
    path('', appointment_view, name='appointment'),
    path('<int:id>/request_cancellation/', request_cancellation_appointment_view, name='request-cancellation-appointment'),
    path('add-event-to-calendar/', add_event_to_calendar_view, name='add-event-to-calendar'),
    path('send-event-as-text-message/', send_event_as_text_message_view, name='send-event-as-text-message'),
    path('send-event-as-text-message-prompt/', send_event_as_text_message_prompt_view, name='send-event-as-text-message-prompt'),
    path('callback/', access_authorization_view, name='access-authorization'),
    path('calendar/', appointment_calendar_view, name='appointment-calendar'),
]
