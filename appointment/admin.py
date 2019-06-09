from django.contrib import admin
from .models import Appointment, AppointmentTime

# Register your models here.
admin.site.register(Appointment)
admin.site.register(AppointmentTime)