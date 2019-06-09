from django.urls import path, include
from .views import manage_site_view


urlpatterns = [
    path('', manage_site_view, name='manage-site'),
    path('', manage_site_view, name='about-admin'),
    path('', manage_site_view, name='about-picture-admin'),
    path('', manage_site_view, name='map-location-text-admin'),
    path('about/', include('about.adminurls')),
    path('gallery/', include('gallery.adminurls')),
    path('services/', include('service.adminurls')),
    path('products/', include('product.adminurls')),
    path('home/', include('main.adminurls')),
    path('users/', include('customer.adminurls')),
    path('staff/', include('staff.adminurls')),
    path('appointment/', include('appointment.adminurls')),
    path('reports/', include('report.adminurls')),
    path('reviews/', include('review.adminurls')),
    path('testimonials/', include('testimonial.adminurls')),
    path('receipts/', include('receipt.adminurls')),
    path('articles/', include('blog.adminurls')),
]
