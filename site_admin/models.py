from django.db import models
from django.contrib.auth.models import User
from django.dispatch import receiver

# Create your models here.
class AdminProfile(models.Model):
    user = models.OneToOneField(
        User, on_delete=models.CASCADE, related_name='admin')
