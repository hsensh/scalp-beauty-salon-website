from django.db import models
from PIL import Image

# Create your models here.
class AboutPicture(models.Model):
    photo = models.ImageField(upload_to='images/about_picture/')
    
class About(models.Model):
    info = models.TextField(max_length=500, blank=False, null=False)
    operating_hours = models.TextField(max_length=100, blank=False, null=False)

class Award(models.Model):
    title = models.CharField(max_length=45)
    description = models.TextField(max_length=300)
    logo = models.ImageField(upload_to='images/awards_logos/', default='default.jpeg')

class Partnership(models.Model):
    company_name = models.CharField(max_length=45, blank=False, null=False)
    about = models.TextField(max_length=300, blank=True, null=True)
    logo = models.ImageField(upload_to='images/partnerships_logos/', default='default.jpeg')

class SalonPicture(models.Model):
    caption = models.CharField(max_length=45, blank=True, null=True)
    picture = models.ImageField(upload_to='images', default='default.jpeg')

class ContactInformation(models.Model):
    contact_type = models.CharField(max_length=20, blank=False, null=False)
    info = models.TextField(max_length=100, blank=False, null=False)
