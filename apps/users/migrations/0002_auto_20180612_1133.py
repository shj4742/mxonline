# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-06-12 11:33
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='image',
            field=models.ImageField(default='/static/images/default.png', upload_to='/static/images/%Y/%m', verbose_name='\u5934\u50cf'),
        ),
    ]
