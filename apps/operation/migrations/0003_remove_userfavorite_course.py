# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-06-22 14:52
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('operation', '0002_auto_20180609_1554'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='userfavorite',
            name='course',
        ),
    ]
