from django.shortcuts import render
from .models import Receipt
from customer.models import CustomerProfile
from decorators import user_required, admin_required

# Create your views here.
@user_required
def receipt_view(request):
    receipts = Receipt.objects.filter(user=CustomerProfile.objects.get(user=request.user))
    context = {
        'receipts': receipts[::-1],
    }
    return render(request, 'receipt.html', context)

@admin_required
def receipt_admin_view(request):
    receipts = Receipt.objects.all()
    context = {
        'receipts': receipts[::-1],
    }
    return render(request, 'receipt_admin.html', context)