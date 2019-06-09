from django import forms
from .models import Testimonial

class TestimonialForm(forms.ModelForm):
    rating = forms.IntegerField(min_value=1, max_value=5)
    class Meta:
        model = Testimonial
        fields = ['summary', 'info', 'rating']