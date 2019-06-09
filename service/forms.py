from django import forms
from .models import ServiceType, Service
class ServiceTypeForm(forms.ModelForm):

    class Meta:
        model = ServiceType
        fields = ('name', 'description', 'icon')


class ServiceForm(forms.ModelForm):
    GENDER_CHOICES = [
        ('Male', u'Male'),
        ('Female', u'Female'),
        ('Unisex', u'Unisex'),
    ]
    gender = forms.ChoiceField(choices=GENDER_CHOICES, initial='Unisex')
    service_type = forms.ModelChoiceField(ServiceType.objects.all(), empty_label='Choose your Service Type')

    class Meta:
        model = Service
        fields = ('name', 'service_type', 'description', 'gender', 'price', 'discounted_price', 'featured')

    def clean_featured(self, *args, **kwargs):
        featured = self.cleaned_data.get('featured')
        if featured:
            if len(list(Service.objects.filter(featured=True))) < 3:
                return featured
            raise forms.ValidationError('You can select a maximum of only 3 featured services.')
        return featured

