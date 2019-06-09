from django import forms
from .models import Article, ArticleImage

class ArticleForm(forms.ModelForm):

    class Meta:
        model = Article
        fields = ['title', 'content']

class ArticleImageForm(forms.ModelForm):

    class Meta:
        model = ArticleImage
        fields = ['caption', 'image']