from django.db import models

# Create your models here.
class Testimonial(models.Model):
    user = models.ForeignKey('customer.CustomerProfile', on_delete=models.CASCADE)
    staff = models.ForeignKey('staff.StaffProfile', on_delete=models.CASCADE)
    summary = models.CharField(max_length=200)
    info = models.TextField(max_length=2000, blank=True, null=True)
    rating = models.IntegerField(default=5)