from django.db import models
from src import settings

# Create your models here.
class Newsletter(models.Model):
    subject = models.CharField(max_length=200)
    message = models.TextField(max_length=2000)
    email_from = models.CharField(max_length=200, default=settings.EMAIL_HOST_USER)
    recipient_list = models.ForeignKey('CustomerRecipientList', on_delete=models.CASCADE)

class CustomerRecipientList(models.Model):
    user = models.ManyToManyField('customer.CustomerProfile', blank=True)

class StaffNewsletter(models.Model):
    subject = models.CharField(max_length=200)
    message = models.TextField(max_length=2000)
    email_from = models.CharField(max_length=200, default=settings.EMAIL_HOST_USER)
    recipient_list = models.ForeignKey('StaffRecipientList', on_delete=models.CASCADE)

class StaffRecipientList(models.Model):
    user = models.ManyToManyField('staff.StaffProfile', blank=True)
