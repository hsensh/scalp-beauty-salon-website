from django import forms
from .models import Newsletter, StaffNewsletter

class NewsletterForm(forms.ModelForm):
    class Meta:
        model = Newsletter
        fields = ['subject', 'message']

class StaffNewsletterForm(forms.ModelForm):
    class Meta:
        model = StaffNewsletter
        fields = ['subject', 'message']
