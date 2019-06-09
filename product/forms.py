from django import forms
from .models import Product
from service.models import ServiceType


class ProductForm(forms.ModelForm):
    GENDER_CHOICES = [
        ('Male', u'Male'),
        ('Female', u'Female'),
        ('Unisex', u'Unisex'),
    ]
    gender = forms.ChoiceField(choices=GENDER_CHOICES, initial='Unisex')
    service_type = forms.ModelChoiceField(ServiceType.objects.all(), empty_label='Choose your Service Type')
    in_stock = forms.BooleanField(initial=True)
    class Meta:
        model = Product
        fields = ('name', 'service_type', 'description',
                  'gender', 'price', 'discounted_price', 'photo', 'in_stock')
