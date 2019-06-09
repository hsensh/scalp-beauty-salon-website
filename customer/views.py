from django.shortcuts import render, redirect
from django.contrib.auth import login, logout, authenticate
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages
from .forms import CustomerProfileForm, ExtendedCustomerProfileForm
from .models import CustomerProfile
from django.core.mail import send_mail
from django.db import transaction
from newsletter.models import CustomerRecipientList
from decorators import admin_required

# Create your views here.

@transaction.atomic
def signup_view(request):
    customer_profile_form = CustomerProfileForm(request.POST or None, request.FILES or None)
    extended_customer_profile_form = ExtendedCustomerProfileForm(request.POST or None, request.FILES or None)
    valid = customer_profile_form.is_valid() * extended_customer_profile_form.is_valid()
    recipient_list = CustomerRecipientList.objects.last()
    if valid:
        customer = customer_profile_form.save()
        extended_customer, created = CustomerProfile.objects.get_or_create(user=customer)
        for field in ['gender', 'city', 'country', 'birthdate', 'phone_number', 'photo']:
            setattr(extended_customer, field, extended_customer_profile_form.cleaned_data.get(field))
        extended_customer.save()
        recipient_list.user.add(CustomerProfile.objects.last())
        return redirect('login')
    context = {
        'profile_form': customer_profile_form,
        'extended_profile_form': extended_customer_profile_form,
    }
    return render(request, 'registration/signup.html', context)

@admin_required
def user_admin_view(request):
    objects = CustomerProfile.objects.all()
    context = {
        'objects': objects[::-1],
    }
    return render(request, 'user_admin.html', context)
