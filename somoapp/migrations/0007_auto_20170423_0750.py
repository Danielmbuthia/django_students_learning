# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-04-23 07:50
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('somoapp', '0006_auto_20170423_0742'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='useraccount',
            name='user',
        ),
        migrations.AddField(
            model_name='useraccount',
            name='user',
            field=models.OneToOneField(default=django.utils.timezone.now, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
            preserve_default=False,
        ),
    ]