# Generated by Django 2.1.7 on 2019-03-30 12:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('about', '0002_auto_20190329_1808'),
    ]

    operations = [
        migrations.AlterField(
            model_name='award',
            name='description',
            field=models.TextField(max_length=300),
        ),
    ]
