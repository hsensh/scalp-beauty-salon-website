from django.db import models

# Create your models here.
class HomePicture(models.Model):
    photo = models.ImageField(upload_to='images/home/')
    caption = models.CharField(max_length=50)
    url_text = models.CharField(max_length=50)
    url_link = models.CharField(max_length=500)

class MapLocation(models.Model):
    location_text = models.CharField(max_length=100, default='American University of Beirut')