from django.db import models
from cart.models import Cart
# Create your models here.

class Product(models.Model):
    name = models.CharField(max_length=50)
    description = models.TextField(max_length=200)
    gender = models.CharField(max_length=10)
    price = models.IntegerField()
    discounted_price = models.IntegerField(blank=True, null=True)
    photo = models.ImageField(upload_to='images/products/', default='default.jpeg')
    service_type = models.ForeignKey('service.ServiceType', on_delete=models.CASCADE)
    in_stock = models.BooleanField(default=True)

    def __str__(self, *args, **kwargs):
        return self.name
    
