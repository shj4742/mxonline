# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-06-12 11:40
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_auto_20180612_1133'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='image',
            field=models.ImageField(default='images/default.png', upload_to='images/%Y/%m', verbose_name='\u5934\u50cf'),
        ),
    ]
