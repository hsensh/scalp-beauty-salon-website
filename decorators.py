from django.contrib.auth.decorators import user_passes_test, login_required
from django.urls import reverse_lazy

admin_required = user_passes_test(
    lambda user: hasattr(user, 'admin'), login_url=reverse_lazy('unauthorized')
)

staff_required = user_passes_test(
    lambda user: hasattr(user, 'staff'), login_url=reverse_lazy('unauthorized')
)

user_required = user_passes_test(
    lambda user: hasattr(user, 'user'), login_url=reverse_lazy('login-required')
)

