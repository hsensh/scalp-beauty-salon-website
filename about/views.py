from django.shortcuts import render
from staff.models import StaffProfile
from manage_site.views import admin_view, edit_admin_view, delete_admin_view
from decorators import admin_required
from .models import (
    About,
    ContactInformation,
    Award,
    Partnership,
    AboutPicture,
)
from .forms import (
    AboutForm,
    ContactInformationForm,
    AwardForm,
    PartnershipForm,
    AboutPictureForm,
)

# Create your views here.
def about_view(request):
    picture = AboutPicture.objects.last()
    about = About.objects.last()
    contacts = ContactInformation.objects.all()
    awards = Award.objects.all()
    partnerships = Partnership.objects.all()
    operating_hours = get_operating_hours()
    staff = StaffProfile.objects.all()
    context = {
        'picture': picture,
        'about': about,
        'contacts': contacts,
        'awards': awards,
        'partnerships': partnerships,
        'operating_hours': operating_hours,
        'staff': staff,
    }
    return render(request, 'about.html', context)


def get_operating_hours():
    temp = About.objects.values_list('operating_hours', flat=True)[0].split('\r\n')
    operating_hours = []
    operating_hours_item = {}
    for item in temp:
        if temp.index(item) % 2 == 0:
            operating_hours_item['days'] = item
        else:
            operating_hours_item['hours'] = item
            operating_hours.append(operating_hours_item)
            operating_hours_item = {}
    return operating_hours

# region about_admin

@admin_required
def edit_about_admin_view(request):
    return edit_admin_view(request, 1, 'about', About, AboutForm)


@admin_required
def edit_about_picture_admin_view(request):
    return edit_admin_view(request, 1, 'about picture', AboutPicture, AboutPictureForm)

# endregion

# region contact_admin

@admin_required
def contact_information_admin_view(request):
    return admin_view(request, 'contact information', ContactInformation, ContactInformationForm)


@admin_required
def edit_contact_information_admin_view(request, id):
    return edit_admin_view(request, id, 'contact information', ContactInformation, ContactInformationForm)


@admin_required
def delete_contact_information_admin_view(request, id):
    return delete_admin_view(request, id, 'contact information', ContactInformation)

# endregion

# region award_admin

@admin_required
def award_admin_view(request):
    return admin_view(request, 'award', Award, AwardForm)


@admin_required
def edit_award_admin_view(request, id):
    return edit_admin_view(request, id, 'award', Award, AwardForm)


@admin_required
def delete_award_admin_view(request, id):
    return delete_admin_view(request, id, 'award', Award)

# endregion

# region partnership_admin

@admin_required
def partnership_admin_view(request):
    return admin_view(request, 'partnership', Partnership, PartnershipForm)


@admin_required
def edit_partnership_admin_view(request, id):
    return edit_admin_view(request, id, 'partnership', Partnership, PartnershipForm)


@admin_required
def delete_partnership_admin_view(request, id):
    return delete_admin_view(request, id, 'partnership', Partnership)

# endregion






