# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-06-22 11:24
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('organization', '0006_teacher_image'),
        ('courses', '0002_course_course_org'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='course_teacher',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='organization.Teacher', verbose_name='\u6388\u8bfe\u8001\u5e08'),
        ),
    ]
