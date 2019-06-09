from django import forms
from .models import StaffProfile
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from service.models import ServiceType


class StaffProfileForm(UserCreationForm):

    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'username', 'email', 'password1', 'password2')

    def save(self, commit=True):
        user = super(StaffProfileForm, self).save(commit=True)
        user.email = self.cleaned_data['email']
        user.first_name = self.cleaned_data['first_name']
        user.last_name = self.cleaned_data['last_name']
        user.save()
        return user

class ExtendedStaffProfileForm(forms.ModelForm):
    GENDER_CHOICES = [
        ('Male', u'Male'),
        ('Female', u'Female'),
        ('Other', u'Other'),
    ]
    service_type = forms.ModelMultipleChoiceField(ServiceType.objects.all(), widget=forms.CheckboxSelectMultiple)
    gender = forms.ChoiceField(choices=GENDER_CHOICES, initial='Other')

    class Meta:
        model = StaffProfile
        fields = ('about', 'birthdate', 'gender', 'phone_number', 'service_type', 'photo')
