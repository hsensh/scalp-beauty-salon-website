from django.contrib import admin
from .models import (
    About, 
    SalonPicture,
    Award,
    Partnership,
    AboutPicture,
)
# Register your models here.
admin.site.register(About)
admin.site.register(SalonPicture)
admin.site.register(Award)
admin.site.register(Partnership)
admin.site.register(AboutPicture)
