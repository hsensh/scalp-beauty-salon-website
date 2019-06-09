from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver

# Create your models here.
class CustomerProfile(models.Model):
    user = models.OneToOneField(User, on_delete = models.CASCADE, related_name='user')
    gender = models.CharField(max_length = 10)
    city = models.CharField(max_length = 45)
    country = models.CharField(max_length = 45)
    birthdate = models.DateField(null=True)
    phone_number = models.CharField(max_length = 15)
    photo = models.ImageField(upload_to="images/customers/", default='images/customers/default.jpg')

    def __str__(self, *args, **kwargs):
        return f'{self.user.first_name} {self.user.last_name}'

    # @receiver(post_save, sender=User)
    # def update_user_profile(sender, instance, created, **kwargs):
    #     if created:
    #         try:
    #             CustomerProfile.objects.get(user=instance)
    #         except: 
    #             CustomerProfile.objects.create(user=instance)
    #             instance.user.save()

class LoggedInCustomers(models.Model):
    number = models.IntegerField(default=0)



