from django.shortcuts import render, redirect
from .models import Testimonial
from .forms import TestimonialFrom
from customer.models import CustomerProfile
from staff.models import StaffProfile
from appointment.models import Appointment
from decorators import user_required

# Create your views here.
@user_required
def testimonial_view(request):
    user = CustomerProfile.objects.get(user=request.user)
    staff_ids = Appointment.objects.filter(customer=user).values_list('staff', flat=True).distinct()
    staff = StaffProfile.objects.filter(pk__in=staff_ids)
    context = {
        'staff': staff,
    }
    return render(request, 'testimonial.html', context)

@user_required
def give_testimonial_view(request, id):
    if id in Appointment.objects.filter(customer=user).values_list('staff', flat=True).distinct():
        user = CustomerProfile.objects.get(user=request.user)
        staff = StaffProfile.objects.get(id=id)
        testimonial, created = Testimonial.objects.get_or_create(user=user, staff=staff)
        testimonial.save()
        testimonial_form = TestimonialForm(request.POST or None)
        if testimonial_form.is_valid():
            testimonial_form.save()
            render(request, 'testimonial_thanks.html')
        context = {
            'form': testimonial_form,
        }
        return render(request, 'give_testimonial.html', context)
    return remder(request, 'not_qualified_testimonial.html')
