from django.shortcuts import render
from .models import HomePicture, MapLocation
from .forms import HomePictureForm, MapLocationForm
from about.models import About
from service.models import Service
from newsletter.models import CustomerRecipientList
from customer.models import CustomerProfile
from manage_site.views import admin_view, edit_admin_view, delete_admin_view
from decorators import admin_required
from about.views import get_operating_hours

# Create your views here.
def home_view(request):
    pictures = HomePicture.objects.all()    
    about = About.objects.values_list('info', flat=True)[0]
    operating_hours = get_operating_hours()
    featured_services = Service.objects.filter(featured=True)
    location = MapLocation.objects.last().location_text.replace(' ', '+')
    context = {
        'pictures': pictures,
        'operating_hours': operating_hours,
        'about': about,
        'featured_services': featured_services,
        'location': location,
    }
    return render(request, 'home.html', context)


@admin_required
def home_picture_admin_view(request):
    return admin_view(request, 'home picture', HomePicture, HomePictureForm)


@admin_required
def edit_home_picture_admin_view(request, id):
    return edit_admin_view(request, id, 'home picture', HomePicture, HomePictureForm)


@admin_required
def delete_home_picture_admin_view(request, id):
    return delete_admin_view(request, id, 'home picture', HomePicture)

@admin_required
def edit_map_location_text_admin_view(request):
    return edit_admin_view(request, 1, 'map location text', MapLocation, MapLocationForm)
