from django.contrib import admin
from .models import Receipt, ReceiptProduct

# Register your models here.
admin.site.register(Receipt)
admin.site.register(ReceiptProduct)