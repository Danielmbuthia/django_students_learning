# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User

# Create your models here.


class Course(models.Model):
    name = models.CharField(max_length=80)


class UserAccount(models.Model):
    user = models.ManyToManyField(User)
    profile = models.IntegerField(default=0)
    course_id = models.ManyToManyField(Course)
    mobile = models.CharField(max_length=13)
    reg = models.CharField(max_length=50)
    avatar = models.ImageField()
    status = models.IntegerField(default=0)


class Book(models.Model):
    user = models.ManyToManyField(User)
    isbn = models.CharField(max_length=80)
    title = models .CharField(max_length=80)
    description = models.CharField(max_length=80)
    course = models.ManyToManyField(Course)
    year = models.IntegerField()
    semester = models.IntegerField()
    unit = models.CharField(max_length=80)
    size = models.CharField(max_length=80)
    file_type = models.CharField(max_length=80)


class MyDownload(models.Model):
    user = models.OneToOneField(User)
    book = models.ManyToManyField(Book)
    date = models.CharField(max_length=80)


class MyRequest(models.Model):
    user = models.OneToOneField(User)
    date = models.CharField(max_length=80)
    title = models.CharField(max_length=80)
    description = models.CharField(max_length=80)
    course = models.ManyToManyField(Course)
    year = models.IntegerField()
    semester = models.IntegerField()
    unit = models.CharField(max_length=80)


class System(models.Model):
    app_name = models.CharField(max_length=80)
    app_desc = models.CharField(max_length=80)






