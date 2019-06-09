from django.db import models
from datetime import datetime, timedelta

# Create your models here.

class Appointment(models.Model):
    customer = models.ForeignKey('customer.CustomerProfile', on_delete=models.CASCADE)
    staff = models.ForeignKey('staff.StaffProfile', on_delete=models.CASCADE)
    service = models.ForeignKey('service.Service', on_delete=models.CASCADE)
    date = models.DateTimeField()
    notes = models.TextField(max_length=300)
    canceled = models.BooleanField(default=False)
    requested_cancellation = models.BooleanField(default=False)
    requesting_user_type = models.CharField(max_length=10, null=True, blank=True)
    rejected_requested_cancellation = models.BooleanField(default=False)

    @property
    def is_past(self):
        return datetime.today() > self.date.replace(tzinfo=None)
    @property
    def can_cancel(self):
        if not datetime.today() > self.date.replace(tzinfo=None):
            cancellation_time = AppointmentTime.objects.last().last_minute_cancellation_time
            return self.date.replace(tzinfo=None) - datetime.today() >= timedelta(hours=cancellation_time)
        return False

class AppointmentTime(models.Model):
    length = models.IntegerField(default=1)
    last_minute_cancellation_time = models.IntegerField(default=3)


