from django.contrib import admin
from .models import Newsletter, CustomerRecipientList, StaffNewsletter, StaffRecipientList
# Register your models here.
admin.site.register(Newsletter)
admin.site.register(StaffNewsletter)
admin.site.register(CustomerRecipientList)
admin.site.register(StaffRecipientList)
