from django.urls import path
from .views import (
    manage_account_view,
    edit_profile_view,
    change_username_view,
)

urlpatterns = [
    path('', manage_account_view, name='manage-account'),
    path('edit-profile/', edit_profile_view, name='edit-profile'),
    path('change-username/', change_username_view, name='change-username'),
]