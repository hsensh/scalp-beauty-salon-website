from django.shortcuts import render, redirect
from django.http import HttpResponse
from manage_site.views import admin_view, edit_admin_view, delete_admin_view
from .models import Article, ArticleImage
from .forms import ArticleForm, ArticleImageForm
from django.db import transaction
from decorators import admin_required

# Create your views here.


def article_view(request):
    objects = Article.objects.all()
    images = ArticleImage.objects.all()
    context = {
        'objects': objects,
        'images': images,
    }
    return render(request, 'blog.html', context)

@transaction.atomic
@admin_required
def article_admin_view(request):
    objects = Article.objects.all()
    images = ArticleImage.objects.all()
    article_form = ArticleForm(request.POST or None)
    if article_form.is_valid():
        saved_article = article_form.save()
        ArticleImage.objects.filter(article=None).update(article=saved_article)
        return redirect('article-admin')
    context = {
        'form': article_form,
        'objects': objects,
        'images': images,
    }
    return render(request, 'article_admin.html', context)


@transaction.atomic
@admin_required
def edit_article_admin_view(request, id):
    article = Article.objects.get(id=id)
    images = ArticleImage.objects.filter(article=article)
    article_form = ArticleForm(request.POST or None, instance=article)
    if article_form.is_valid():
        saved_article = article_form.save()
        ArticleImage.objects.filter(article=None).update(article=saved_article)
        return redirect('article-admin')
    context = {
        'form': article_form,
        'images': images,
    }
    return render(request, 'edit_article_admin.html', context)


@transaction.atomic
@admin_required
def delete_article_admin_view(request, id):
    article = Article.objects.get(id=id)
    images = ArticleImage.objects.filter(article=article).delete()
    article.delete()
    return redirect('article-admin')



@transaction.atomic
@admin_required
def add_article_image_admin_view(request):
    article_image_form = ArticleImageForm(request.POST or None, request.FILES or None)
    if article_image_form.is_valid():
        article_image_form.save()
        return HttpResponse(
            '<script>window.close()</script>'
        )   
    context = {
        'form': article_image_form,
    }
    return render(request, 'add_article_image_admin.html', context)


@transaction.atomic
@admin_required
def delete_article_image_admin_view(request, id):
    image = ArticleImage.objects.get(id=id)
    article = image.article
    image.delete()
    return redirect('edit-article-admin', id=article.id)
