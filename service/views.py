from django.shortcuts import render
from decorators import admin_required
from .models import ServiceType, Service
from .forms import ServiceTypeForm, ServiceForm
from manage_site.views import admin_view, edit_admin_view, delete_admin_view

# Create your views here.
def service_type_view(request):
    objects = ServiceType.objects.all()
    context = {
        'objects': objects[::-1],
    }
    return render(request, 'service_types.html', context)

def service_view(request, id):
    males = Service.objects.filter(service_type__id__exact=id, gender='Male')
    females = Service.objects.filter(service_type__id__exact=id, gender='Female')
    both = Service.objects.filter(service_type__id__exact=id, gender='Unisex')
    context = {
        'males': males[::-1],
        'females': females[::-1],
        'both': both[::-1],
    }
    return render(request, 'services.html', context)

# region service admin

@admin_required
def service_admin_view(request):
    return admin_view(request, 'service', Service, ServiceForm)


@admin_required
def edit_service_admin_view(request, id):
    return edit_admin_view(request, id, 'service', Service, ServiceForm)


@admin_required
def delete_service_admin_view(request, id):
    return delete_admin_view(request, id, 'service', Service)

# endregion

# region service type admin

@admin_required
def service_type_admin_view(request):
    return admin_view(request, 'service type', ServiceType, ServiceTypeForm)


@admin_required
def edit_service_type_admin_view(request, id):
    return edit_admin_view(request, id, 'service type', ServiceType, ServiceTypeForm)


@admin_required
def delete_service_type_admin_view(request, id):
    return delete_admin_view(request, id, 'service type', ServiceType)

# endregion
