from django.shortcuts import render, redirect
from .models import Testimonial
from .forms import TestimonialForm
from customer.models import CustomerProfile
from staff.models import StaffProfile
from appointment.models import Appointment
from decorators import user_required, staff_required, admin_required
from django.utils import timezone
from django.db.models import Avg

# Create your views here.
@user_required
def testimonial_view(request):
    now = timezone.now()
    user = CustomerProfile.objects.get(user=request.user)
    staff_ids = Appointment.objects.filter(date__lte=now, customer=user).values_list('staff', flat=True).distinct()
    staff = StaffProfile.objects.filter(pk__in=staff_ids)
    staff_done = Testimonial.objects.values_list('staff', flat=True).distinct()
    context = {
        'staff': staff,
        'staff_done': staff_done,
    }
    return render(request, 'testimonial.html', context)

@user_required
def give_testimonial_view(request, id):
    user = CustomerProfile.objects.get(user=request.user)
    now = timezone.now()
    if id in Appointment.objects.filter(date__lte=now, customer=user).values_list('staff', flat=True).distinct():
        staff = StaffProfile.objects.get(id=id)
        testimonial, created = Testimonial.objects.get_or_create(user=user, staff=staff)
        testimonial.save()
        testimonial_form = TestimonialForm(request.POST or None, instance=testimonial)
        if testimonial_form.is_valid():
            testimonial_form.save()
            staff.average_rating = Testimonial.objects.all().aggregate(Avg('rating'))['rating__avg']
            staff.save()
            return render(request, 'testimonial_thanks.html')
        context = {
            'form': testimonial_form,
        }
        return render(request, 'give_testimonial.html', context)
    return render(request, 'not_qualified_testimonial.html')

@staff_required
def testimonial_staff_view(request):
    testimonials = Testimonial.objects.filter(staff__user=request.user)
    context = {
        'testimonials': testimonials,
    }
    return render(request, 'testimonial_staff.html', context)

@admin_required
def testimonials_admin_view(request):
    testimonials = Testimonial.objects.all()
    context = {
        'testimonials': testimonials,
    }
    return render(request, 'testimonials_admin.html', context)
