from django.db import models

# Create your models here.


class Review(models.Model):
    user = models.ForeignKey('customer.CustomerProfile', on_delete=models.CASCADE)
    summary = models.CharField(max_length=200)
    info = models.TextField(max_length=2000, blank=True, null=True)
    rating = models.IntegerField(default=5)
