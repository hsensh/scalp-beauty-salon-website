from django.db import models

# Create your models here.
class ServiceType(models.Model):
    name = models.CharField(max_length=50)
    icon = models.FileField(upload_to='images/services/', default='default.jpeg')
    description = models.TextField(max_length=200)

    def __str__(self):
        return self.name

class Service(models.Model):
    name = models.CharField(max_length=50)
    description = models.TextField(max_length=200)
    gender = models.CharField(max_length=10)
    price = models.IntegerField()
    discounted_price = models.IntegerField(blank=True, null=True)
    service_type = models.ForeignKey('ServiceType', on_delete=models.CASCADE)
    featured = models.BooleanField(default=False)

    def __str__(self, *args, **kwargs):
        return self.name
