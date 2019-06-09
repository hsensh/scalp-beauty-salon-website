from django import forms
from .models import HomePicture, MapLocation

class HomePictureForm(forms.ModelForm):

    class Meta:
        model = HomePicture
        fields = ['photo', 'caption', 'url_text', 'url_link']

class MapLocationForm(forms.ModelForm):

    class Meta:
        model = MapLocation
        fields = ['location_text']
