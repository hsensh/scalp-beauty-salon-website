from django.db import models

# Create your models here.
class Receipt(models.Model):
    user = models.ForeignKey('customer.CustomerProfile', on_delete=models.CASCADE)
    product = models.ManyToManyField('product.Product', through='ReceiptProduct')
    total_price = models.IntegerField(default=0)

class ReceiptProduct(models.Model):
    receipt = models.ForeignKey('Receipt', on_delete=models.CASCADE)
    product = models.ForeignKey('product.Product', on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)
