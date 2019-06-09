from django.shortcuts import render, redirect
from customer.models import CustomerProfile
from customer.forms import CustomerProfileForm, ExtendedCustomerProfileForm
from staff.models import StaffProfile
from staff.forms import ExtendedStaffProfileForm
from customer.models import CustomerProfile
from customer.forms import ExtendedCustomerProfileForm
from site_admin.models import AdminProfile
from site_admin.forms import UsernameUpdateForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from .forms import UserUpdateForm

# Create your views here.
@login_required
def manage_account_view(request):
    return render(request, 'manage_account.html')

@login_required
def edit_profile_view(request):
    for var in vars(request.user).items():
        print(var)
    def fields_update(extended_user, extended_user_profile_form):
        if hasattr(request.user, 'staff'):
            for_fields(['about', 'birthdate', 'gender','phone_number', 'photo'], extended_user, extended_user_profile_form)
            extended_user.service_type.set(extended_user_profile_form.cleaned_data.get('service_type'))
        if hasattr(request.user, 'user'):
            for_fields(['gender', 'city', 'country', 'birthdate', 'phone_number', 'photo'], extended_user, extended_user_profile_form)
    
    if hasattr(request.user, 'staff'):
        return update_profile(request, StaffProfile, ExtendedStaffProfileForm, fields_update)
    if hasattr(request.user, 'user'):
        return update_profile(request, CustomerProfile, ExtendedCustomerProfileForm, fields_update)
    return redirect('manage-account')
    
def update_profile(request, UserProfile, ExtendedUserProfileForm, fields_update):
    user_obj = request.user
    obj, created = UserProfile.objects.get_or_create(user=user_obj)
    user_profile_form = UserUpdateForm(
        request.POST or None, request.FILES or None, instance=user_obj)
    extended_user_profile_form = ExtendedUserProfileForm(
        request.POST or None, request.FILES or None, instance=obj)
    valid = user_profile_form.is_valid() * extended_user_profile_form.is_valid()
    if valid:
        user = user_profile_form.save()
        obj.user = user
        extended_user = obj
        fields_update(extended_user, extended_user_profile_form)
        extended_user.save()
        return redirect('manage-account')
    context = {
        'profile_form': user_profile_form,
        'extended_profile_form': extended_user_profile_form,
        'obj': obj,
    }
    return render(request, 'edit_profile.html', context)

@login_required
def change_username_view(request):
    user = request.user
    username_update_form = UsernameUpdateForm(request.POST or None, instance=user)
    if username_update_form.is_valid():
        username_update_form.save()
        return redirect('manage-account')
    context = {
        'form': username_update_form,
    }
    return render(request, 'change_username.html', context)
    

def for_fields(fields, extended_user, extended_user_profile_form):
    for field in fields:
        setattr(extended_user, field, extended_user_profile_form.cleaned_data.get(field))
    

