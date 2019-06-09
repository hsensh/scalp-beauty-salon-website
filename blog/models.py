from django.db import models

# Create your models here.
class Article(models.Model):
    _images = []

    title = models.CharField(max_length=500)
    content = models.TextField()

class ArticleImage(models.Model):
    caption = models.CharField(max_length=500)
    image = models.ImageField(upload_to='images/article_images/')
    article = models.ForeignKey('Article', on_delete=models.CASCADE, null=True)
    
