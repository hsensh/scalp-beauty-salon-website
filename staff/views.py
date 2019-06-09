from django.shortcuts import render, redirect
from django.contrib.auth import login, logout, authenticate
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages
from .forms import StaffProfileForm, ExtendedStaffProfileForm
from .models import StaffProfile
from django.contrib.auth.models import User
from django.core.mail import send_mail
from django.db import transaction
from decorators import admin_required, login_required
from newsletter.models import StaffRecipientList

# Create your views here.

@admin_required
@transaction.atomic
def signup_staff_view(request):
    staff_profile_form = StaffProfileForm(request.POST or None, request.FILES or None)
    extended_staff_profile_form = ExtendedStaffProfileForm(request.POST or None, request.FILES or None)
    valid = staff_profile_form.is_valid() * extended_staff_profile_form.is_valid()
    recipient_list = StaffRecipientList.objects.last()
    if valid:
        staff = staff_profile_form.save()
        extended_staff = StaffProfile.objects.create(user=staff)
        for field in ['about', 'birthdate', 'gender', 'phone_number', 'photo']:
            setattr(extended_staff, field,
                    extended_staff_profile_form.cleaned_data.get(field))
        extended_staff.service_type.set(extended_staff_profile_form.cleaned_data.get('service_type'))
        extended_staff.save()
        recipient_list.user.add(StaffProfile.objects.last())
        return redirect('login')
    context = {
        'profile_form': staff_profile_form,
        'extended_profile_form': extended_staff_profile_form,
    }
    return render(request, 'registration/signup.html', context)

@admin_required
@transaction.atomic
def delete_staff_view(request, id):
    obj = StaffProfile.objects.get(id=id)
    obj_user = User.objects.get(id=obj.user.id)
    obj_user.delete()
    obj.delete()
    return redirect('staff-admin')

@admin_required
@transaction.atomic
def staff_view(request):
    objects = StaffProfile.objects.all()
    context = {
        'objects': objects[::-1],
    }
    return render(request, 'staff_view.html', context)
    
