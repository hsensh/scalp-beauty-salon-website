from django.shortcuts import render
from about.models import SalonPicture
from about.forms import SalonPictureForm
from manage_site.views import admin_view, edit_admin_view, delete_admin_view
from decorators import admin_required

# Create your views here.
def gallery_view(request):
    pictures = SalonPicture.objects.all()
    context = {
        'pictures': pictures,
    }
    return render(request, 'gallery.html', context)

# region picture_admin

@admin_required
def picture_admin_view(request):
    return admin_view(request, 'picture', SalonPicture, SalonPictureForm)


@admin_required
def edit_picture_admin_view(request, id):
    return edit_admin_view(request, id, 'picture', SalonPicture, SalonPictureForm)


@admin_required
def delete_picture_admin_view(request, id):
    return delete_admin_view(request, id, 'picture', SalonPicture)

# endregion
