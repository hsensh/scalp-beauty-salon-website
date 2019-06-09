"""src URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('main.urls')),
    path('accounts/', include('customer.urls')),
    path('accounts/', include('django.contrib.auth.urls')),
    path('manage-site/', include('manage_site.urls')),
    path('about/', include('about.urls')),
    path('manage-account/', include('manage_account.urls')),
    path('appointments/', include('appointment.urls')),
    path('services/', include('service.urls')),
    path('auth/', include('social_django.urls', namespace='social')),
    path('unauthorized/', include('common.urls')),
    path('products/', include('product.urls')),
    path('cart/', include('cart.urls')),
    path('receipts/', include('receipt.urls')),
    path('review/', include('review.urls')),
    path('testimonials/', include('testimonial.urls')),
    path('newsletter/', include('newsletter.urls')),
    path('gallery/', include('gallery.urls')),
    path('blog/', include('blog.urls')),
    ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
