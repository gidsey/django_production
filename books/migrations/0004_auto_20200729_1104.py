# Generated by Django 3.0.1 on 2020-07-29 11:04

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('books', '0003_book_models'),
    ]

    operations = [
        migrations.RenameField(
            model_name='book',
            old_name='models',
            new_name='cover',
        ),
    ]
