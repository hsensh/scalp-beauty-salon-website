from django.urls import path
from .views import (
    edit_about_admin_view,
    edit_about_picture_admin_view,
    contact_information_admin_view,
    delete_contact_information_admin_view,
    edit_contact_information_admin_view,
    award_admin_view,
    edit_award_admin_view,
    delete_award_admin_view,
    partnership_admin_view,
    edit_partnership_admin_view,
    delete_partnership_admin_view,
)

urlpatterns = [
    path('general/', edit_about_admin_view, name='edit-about-admin'),
    path('general-picture/', edit_about_picture_admin_view, name='edit-about-picture-admin'),
    path('contact/', contact_information_admin_view, name='contact-information-admin'),
    path('contact/<int:id>/delete', delete_contact_information_admin_view, name='delete-contact-information-admin'),
    path('contact/<int:id>/edit', edit_contact_information_admin_view, name='edit-contact-information-admin'),
    path('awards/', award_admin_view, name='award-admin'),
    path('awards/<int:id>/delete/', delete_award_admin_view, name='delete-award-admin'),
    path('awards/<int:id>/edit/', edit_award_admin_view, name='edit-award-admin'),
    path('partnerships/', partnership_admin_view, name='partnership-admin'),
    path('partnerships/<int:id>/edit/', edit_partnership_admin_view, name='edit-partnership-admin'),
    path('partnerships/<int:id>/delete/', delete_partnership_admin_view, name='delete-partnership-admin'),
]
