from django.shortcuts import render
from .models import Review
from .forms import ReviewForm
from appointment.models import Appointment
from decorators import user_required
from django.utils import timezone
from customer.models import CustomerProfile
from decorators import admin_required

# Create your views here.
@user_required
def reviews_view(request):
    if Appointment.objects.filter(customer__user=request.user, date__lte=timezone.now(), canceled=False).count() != 0:
        review, created = Review.objects.get_or_create(user=CustomerProfile.objects.get(user=request.user))
        review.save()
        review_form = ReviewForm(request.POST or None, instance=review)
        if review_form.is_valid():
            review_form.save()
            return render(request, 'review_thanks.html')
        context = {
            'form': review_form,
        }
        return render(request, 'review.html', context)
    return render(request, 'not_qualified_review.html')

@admin_required
def reviews_admin_view(request):
    reviews = Review.objects.all()
    context = {
        'reviews': reviews,
    }
    return render(request, 'reviews_admin.html', context)
