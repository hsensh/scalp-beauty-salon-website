from django import forms
from .models import Appointment, AppointmentTime
from service.models import Service, ServiceType
from staff.models import StaffProfile
from datetime import datetime, timedelta

class AppointmentForm(forms.ModelForm):
    service = forms.ModelChoiceField(queryset=None, empty_label='Choose Your Service')
    staff = forms.ModelChoiceField(queryset=None, empty_label='Choose Your Stylist')
    date = forms.DateTimeField()
    class Meta:
        model = Appointment
        fields = ['service', 'date', 'staff', 'notes']

    def __init__(self, *args, **kwargs):
        service_type_id = kwargs.pop('service_type_id')
        super(AppointmentForm, self).__init__(*args, **kwargs)
        self.fields['service'].queryset = Service.objects.filter(
            service_type__id__exact=service_type_id)
        self.fields['staff'].queryset = StaffProfile.objects.filter(
            service_type__id__contains=service_type_id)
    
    def clean(self):
        cleaned_data = super().clean()
        date = cleaned_data.get('date')
        staff = cleaned_data.get('staff')
        if date and staff:
            if date.replace(tzinfo=None) < datetime.today():
                raise forms.ValidationError('Cannot pick a recent date for future appointment')
            booked_dates = Appointment.objects.filter(staff=staff, canceled=False).values_list('date', flat=True)
            for booked_date in booked_dates:
                length = AppointmentTime.objects.last().length
                if date >= booked_date and date < booked_date + timedelta(hours=length):
                    raise forms.ValidationError('This date is already booked for this staff member')

class AppointmentTimeForm(forms.ModelForm):

    class Meta:
        model = AppointmentTime
        fields = ['length', 'last_minute_cancellation_time']



