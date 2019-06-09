from datetime import timedelta
from django.utils import timezone
from django.shortcuts import render, redirect
from decorators import admin_required
from main.models import HomePicture, MapLocation
from main.forms import HomePictureForm, MapLocationForm

# Create your views here.

def admin_view(request, name, model, form):
    model_form = form(
        request.POST or None, request.FILES or None)
    if model_form.is_valid():
        model_form.save()
        return redirect(name.replace(' ', '-') + '-admin')
    objects = []
    for item in model.objects.all():
        objects.append(item)
    context = {
        'form': model_form,
        'objects': objects[::-1],
    }
    return render(request, name.replace(' ', '_') +'_admin.html', context)

def edit_admin_view(request, id, name, model, form):
    obj = model.objects.get(id=id)
    model_form = form(request.POST or None, request.FILES or None, instance=obj)
    if model_form.is_valid():
        model_form.save()
        return redirect(name.replace(' ', '-') + '-admin')
    context = {
        'form': model_form,
        'item': obj,
    }
    return render(request, 'edit_' + name.replace(' ', '_') + '_admin.html', context)

def delete_admin_view(request, id, name, model):
    obj = model.objects.get(id=id)
    obj.delete()
    return redirect(name.replace(' ', '-') + '-admin')

@admin_required
def manage_site_view(request):
    return render(request, 'manage_site.html')
