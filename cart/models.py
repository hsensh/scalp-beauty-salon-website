from django.db import models
from django.dispatch import receiver
from customer.models import CustomerProfile

# Create your models here.
class Cart(models.Model):
    user = models.OneToOneField(CustomerProfile, on_delete=models.CASCADE)
    product = models.ManyToManyField('product.Product', through='CartProduct')
    total_price = models.IntegerField(default=0)

class CartProduct(models.Model):
    cart = models.ForeignKey('Cart', on_delete=models.CASCADE)
    product = models.ForeignKey('product.Product', on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)
