import os.path
from src.settings import BASE_DIR
from django.db import transaction
from datetime import date, timedelta
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from decorators import user_required, staff_required, admin_required
from service.models import Service, ServiceType
from customer.models import CustomerProfile
from .forms import AppointmentForm, AppointmentTimeForm
from .models import Appointment, AppointmentTime
from googleapiclient.discovery import build
from oauth2client.client import flow_from_clientsecrets
from twilio.rest import Client

# Create your views here.
@transaction.atomic
@user_required
def appointment_book_view(request, service_type_id, service_id):
    customer = CustomerProfile.objects.get(user=request.user)
    service = Service.objects.get(id=service_id)
    service_type = ServiceType.objects.get(id=service_type_id)
    form = AppointmentForm(
        request.POST or None,
        service_type_id=service_type_id,
        initial={
            'service': service,
        },
    )
    if form.is_valid():
        appointment = form.save(commit=False)
        appointment.customer = customer
        appointment.save()
        return render(request, 'add_event_to_calendar_prompt.html')
    context = {
        'form': form,
        'service_type': service_type,
    }
    return render(request, 'appointment_book.html', context)

@login_required
def appointment_view(request):
    if hasattr(request.user, 'staff'):
        appointments = Appointment.objects.filter(staff__user=request.user)
    elif hasattr(request.user, 'user'):
        appointments = Appointment.objects.filter(customer__user=request.user)
    appointments_today = appointments.filter(date__date=date.today()).order_by('date')
    done_appointments = appointments.filter(date__date__lt=date.today()).order_by('date')
    upcoming_appointments = appointments.filter(date__date__gt=date.today()).order_by('date')
    context = {
        'todays': appointments_today,
        'done': done_appointments,
        'upcomings': upcoming_appointments,
    }
    return render(request, 'appointment.html', context)

@admin_required
def appointment_admin_view(request):
    appointments = Appointment.objects.all()
    requested_for_cancellation = appointments.filter(
        requested_cancellation=True, 
        rejected_requested_cancellation=False, 
        canceled=False
    )
    appointments_today = appointments.filter(date__date=date.today()).order_by('date')
    done_appointments = appointments.filter(date__date__lt=date.today()).order_by('date')
    upcoming_appointments = appointments.filter(date__date__gt=date.today()).order_by('date')
    context = {
        'requested': requested_for_cancellation,
        'todays': appointments_today,
        'done': done_appointments,
        'upcomings': upcoming_appointments,
    }
    return render(request, 'appointment.html', context)

@admin_required
def cancel_appointment_admin_view(request, id):
    appointment = Appointment.objects.get(id=id)
    if appointment.rejected_requested_cancellation:
        appointment.requested_cancellation = False
        appointment.rejected_requested_cancellation = False
    appointment.canceled = True
    appointment.save()
    return redirect('appointment-admin')

@login_required
def request_cancellation_appointment_view(request, id):
    appointment = Appointment.objects.get(id=id)
    appointment.requested_cancellation = True
    if hasattr(request.user, 'staff'):
        appointment.requesting_user_type = 'staff'
    elif hasattr(request.user, 'user'):
        appointment.requesting_user_type = 'user'
    appointment.save()
    return redirect('appointment')

@admin_required
def reject_cancellation_request_appointment_admin_view(request, id):
    appointment = Appointment.objects.get(id=id)
    appointment.rejected_requested_cancellation = True
    appointment.save()
    return redirect('appointment-admin')

@admin_required
def edit_appointment_time_admin_view(request):
    appointment_time = AppointmentTime.objects.last()
    appointment_time_form = AppointmentTimeForm(request.POST or None, instance=appointment_time)
    if appointment_time_form.is_valid():
        appointment_time_form.save()
        return redirect('manage-site')
    context = {
        'form': appointment_time_form,
    }
    return render(request, 'edit_appointment_time_admin.html', context)

FLOW = flow_from_clientsecrets(
    os.path.join(BASE_DIR, 'credentials.json'),
    scope='https://www.googleapis.com/auth/calendar.events',
    redirect_uri="http://localhost:8000/appointments/callback",
)

@user_required
def add_event_to_calendar_view(request, flow=FLOW):
    return redirect(flow.step1_get_authorize_url())

@user_required
def send_event_as_text_message_view(request):
    appointment = Appointment.objects.filter(customer__user=request.user).last()
    customer = CustomerProfile.objects.get(user=request.user)
    account_sid = "twilio_account_id"
    auth_token = "twilio_auth_token"
    client = Client(account_sid, auth_token)
    message = client.messages.create(
        body=f'{appointment.service.service_type} Appointment at Scalp Hair Salon @ { appointment.date }',
        to=f'+961{customer.phone_number}',
        from_="+12052932763",
    )
    return redirect('appointment')


@user_required
def access_authorization_view(request, flow=FLOW):
    appointment = Appointment.objects.filter(customer__user=request.user).last()
    appointment_start = appointment.date
    length = AppointmentTime.objects.last().length
    appointment_end = appointment_start + timedelta(hours=length)
    code = request.GET.get('code', None)
    event = {
        'summary': f'{appointment.service.service_type} Appointment',
        'location': 'Scalp Beauty Salon',
        'start': {
            'dateTime': f'{appointment_start.year}-{appointment_start.month}-{appointment_start.day}T{appointment_start.hour}:{appointment_start.minute}:{appointment_start.second}',
            'timeZone': 'Asia/Beirut'
        },
        'end': {
            'dateTime': f'{appointment_end.year}-{appointment_end.month}-{appointment_end.day}T{appointment_end.hour}:{appointment_end.minute}:{appointment_end.second}',
            'timeZone': 'Asia/Beirut'
        },
        'sendUpdates': 'all',
    }
    if code:
        credentials = flow.step2_exchange(code)
        service = build('calendar', 'v3', credentials=credentials)
        event = service.events().insert(calendarId='primary', body=event).execute()
        print('Event created: %s' % (event.get('htmlLink')))
    return redirect('send-event-as-text-message-prompt')

def send_event_as_text_message_prompt_view(request):
    return render(request, 'send_event_as_text_message_prompt.html')

def appointment_calendar_view(request):
    if hasattr(request.user, 'staff'):
        appointments = Appointment.objects.filter(canceled=False, staff__user=request.user)
    else:
        appointments = Appointment.objects.filter(canceled=False)
    today = date.today()
    context = {
        'appointments': appointments,
        'today': today,
    }
    return render(request, 'appointment_calendar.html', context)
