from django.shortcuts import render, redirect
from .models import Newsletter, StaffNewsletter, StaffRecipientList, CustomerRecipientList
from .forms import StaffNewsletterForm, NewsletterForm
from customer.models import CustomerProfile
from decorators import admin_required, user_required
from django.core.mail import send_mail

# Create your views here.
@admin_required
def newsletter_view(request, type):
    if type == 'customer':
        recipient_list = CustomerRecipientList.objects.last()
        newsletter = Newsletter(recipient_list=recipient_list)
        newsletter_form = NewsletterForm(request.POST or None, instance=newsletter)
    if type == 'staff':
        recipient_list = StaffRecipientList.objects.last()
        newsletter = StaffNewsletter(recipient_list=recipient_list)
        newsletter_form = StaffNewsletterForm(request.POST or None, instance=newsletter)
    if newsletter_form.is_valid():
        newsletter_saved = newsletter_form.save()
        send_mail(
            newsletter_saved.subject,
            newsletter_saved.message,
            newsletter_saved.email_from,
            list(recipient_list.user.all().values_list('user__email', flat=True)),
        )
        return redirect('manage-site')
    context = {
        'form': newsletter_form,
    }
    return render(request, 'newsletter.html', context)

@user_required
def newsletter_subscribe_view(request):
    recipient_list = CustomerRecipientList.objects.last()
    try:
        recipient_list.user.get(user=request.user)
        recipient_list.user.remove(CustomerProfile.objects.get(user=request.user))
        return render(request, 'newsletter_unsubscribe.html')
    except:
        recipient_list.user.add(CustomerProfile.objects.get(user=request.user))
        return render(request, 'newsletter_subscribe.html')


