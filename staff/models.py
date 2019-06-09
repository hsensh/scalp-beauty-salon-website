from django.db import models
from django.contrib.auth.models import User
from service.models import ServiceType

# Create your models here.
class StaffProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='staff')
    about = models.TextField(max_length=300)
    birthdate = models.DateField(null=True)
    gender = models.CharField(max_length=10)
    phone_number = models.CharField(max_length=20)
    service_type = models.ManyToManyField(ServiceType)
    photo = models.ImageField(upload_to='images/staff/', default='default.jpeg')
    average_rating = models.IntegerField(null=True, blank=True)


    def __str__(self, *args, **kwargs):
            return f'{self.user.first_name} {self.user.last_name}'
