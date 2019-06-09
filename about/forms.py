from django import forms
from .models import (
    AboutPicture,
    About, 
    Award, 
    Partnership, 
    SalonPicture, 
    ContactInformation,
)

class AboutPictureForm(forms.ModelForm):
    
    class Meta:
        model = AboutPicture
        fields = ['photo']
        
class AboutForm(forms.ModelForm):
    class Meta:
        model = About
        fields = ['info', 'operating_hours']

class AwardForm(forms.ModelForm):

    class Meta:
        model = Award
        fields = ['title', 'description', 'logo']


class PartnershipForm(forms.ModelForm):

    class Meta:
        model = Partnership
        fields = ['company_name', 'about', 'logo']

class SalonPictureForm(forms.ModelForm):
    class Meta:
        model = SalonPicture
        fields = ['caption', 'picture',]

    def clean_picture(self, *args, **kwargs):
        picture = self.cleaned_data["picture"]
        if picture == 'default.jpeg':
            raise forms.ValidationError('A picture is required.')
        return picture
    
    def clean_caption(self, *args, **kwargs):
        caption = self.cleaned_data["caption"]
        if caption is None or "":
            raise forms.ValidationError('A caption is required')
        return caption

class ContactInformationForm(forms.ModelForm):

    class Meta:
        model = ContactInformation
        fields = ['contact_type', 'info']
