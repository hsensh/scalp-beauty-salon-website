from datetime import timedelta
from django.utils import timezone
from django.shortcuts import render
from django.db.models import Sum
from customer.models import CustomerProfile
from staff.models import StaffProfile
from site_admin.models import AdminProfile
from appointment.models import Appointment
from decorators import admin_required

# Create your views here.

@admin_required
def reports_admin_view(request):
    now = timezone.now()
    registered_users = CustomerProfile.objects.all().count()
    registered_staff = StaffProfile.objects.all().count()
    registered_admins = AdminProfile.objects.all().count()
    registered_users_this_day = CustomerProfile.objects.filter(
        user__date_joined__day=now.day).count()
    registered_users_this_month = CustomerProfile.objects.filter(
        user__date_joined__month=now.month).count()
    registered_users_this_year = CustomerProfile.objects.filter(
        user__date_joined__year=now.year).count()
    registered_staff_this_day = StaffProfile.objects.filter(
        user__date_joined__day=now.day).count()
    registered_staff_this_month = StaffProfile.objects.filter(
        user__date_joined__month=now.month).count()
    registered_staff_this_year = StaffProfile.objects.filter(
        user__date_joined__year=now.year).count()
    appointments_this_day = Appointment.objects.filter(
        date__day=now.day).count()
    appointments_this_month = Appointment.objects.filter(
        date__month=now.month).count()
    appointments_this_year = Appointment.objects.filter(
        date__year=now.year).count()
    try:
        appointments_revenue = Appointment.objects.filter(
            canceled=False, date__lte=now, service__discounted_price__isnull=True).aggregate(Sum('service__price'))['service__price__sum']
        appointments_revenue += Appointment.objects.filter(canceled=False, date__lte=now, service__discounted_price__isnull=False).aggregate(
            Sum('service__discounted_price'))['service__discounted_price__sum']
    except:
        appointments_revenue = 0
    try:
        appointments_revenue_this_day = Appointment.objects.filter(
            date__day=now.day, canceled=False, date__lte=now, service__discounted_price__isnull=True).aggregate(Sum('service__price'))['service__price__sum']
        appointments_revenue_this_day += Appointment.objects.filter(date__day=now.day, canceled=False, date__lte=now,
                                                                    service__discounted_price__isnull=False).aggregate(Sum('service__discounted_price'))['service__discounted_price__sum']
    except:
        appointments_revenue_this_day = 0
    try:
        appointments_revenue_this_month = Appointment.objects.filter(
            date__month=now.month, canceled=False, date__lte=now, service__discounted_price__isnull=True).aggregate(Sum('service__price'))['service__price__sum']
        appointments_revenue_this_month += Appointment.objects.filter(date__month=now.month, canceled=False, date__lte=now,
                                                                      service__discounted_price__isnull=False).aggregate(Sum('service__discounted_price'))['service__discounted_price__sum']
    except:
        appointments_revenue_this_month = 0
    try:
        appointments_revenue_this_year = Appointment.objects.filter(
            date__year=now.year, canceled=False, date__lte=now, service__discounted_price__isnull=True).aggregate(Sum('service__price'))['service__price__sum']
        appointments_revenue_this_year += Appointment.objects.filter(date__year=now.year, canceled=False, date__lte=now,
                                                                     service__discounted_price__isnull=False).aggregate(Sum('service__discounted_price'))['service__discounted_price__sum']
    except:
        appointments_revenue_this_year = 0
    logged_in_users = CustomerProfile.objects.filter(
        user__last_login__lte=now, user__last_login__gte=now-timedelta(minutes=1)).count()
    context = {
        'registered_users': registered_users,
        'registered_staff': registered_staff,
        'registered_admins': registered_admins,
        'registered_users_this_day': registered_users_this_day,
        'registered_staff_this_day': registered_staff_this_day,
        'registered_users_this_month': registered_users_this_month,
        'registered_staff_this_month': registered_staff_this_month,
        'registered_users_this_year': registered_users_this_year,
        'registered_staff_this_year': registered_staff_this_year,
        'appointments_this_day': appointments_this_day,
        'appointments_this_month': appointments_this_month,
        'appointments_this_year': appointments_this_year,
        'appointments_revenue_this_day': appointments_revenue_this_day,
        'appointments_revenue_this_month': appointments_revenue_this_month,
        'appointments_revenue_this_year': appointments_revenue_this_year,
        'appointments_revenue': appointments_revenue,
        'logged_in_users': logged_in_users,
    }
    return render(request, 'reports_admin.html', context)
