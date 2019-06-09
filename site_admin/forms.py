from django import forms
from .models import AdminProfile
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm


class UsernameUpdateForm(forms.ModelForm):
    username = forms.CharField(max_length=30)

    class Meta:
        model = User
        fields = ['username']

    def clean_username(self, *args, **kwargs):
        username = self.cleaned_data.get('username')
        usernames = []
        for user in User.objects.all():
            if user.username != username:
                usernames.append(user.username)

        if username in usernames:
            raise forms.ValidationError(
                'This username already exists. Try another one.')
        return username

class AdminForm(forms.ModelForm):

    class Meta:
        model = AdminProfile
        fields = []
