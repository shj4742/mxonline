# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-06-20 16:06
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('organization', '0003_courseorg_catgory'),
    ]

    operations = [
        migrations.RenameField(
            model_name='courseorg',
            old_name='catgory',
            new_name='category',
        ),
    ]
