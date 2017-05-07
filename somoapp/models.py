# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User

# Create your models here.


class Course(models.Model):
    name = models.CharField(max_length=80)
    def __str__(self):
        return self.name


class UserAccount(models.Model):
    user = models.ForeignKey(User)
    profile = models.IntegerField(default=0)
    course_id = models.ManyToManyField(Course)
    mobile = models.CharField(max_length=13)
    reg = models.CharField(max_length=50)
    avatar = models.ImageField()
    status = models.IntegerField(default=0)

    def __str__(self):
        return self.mobile


class Book(models.Model):
    user = models.ForeignKey(User)
    isbn = models.CharField(max_length=80)
    title = models .CharField(max_length=80)
    description = models.CharField(max_length=80)
    course = models.ManyToManyField(Course)
    year = models.CharField(max_length=7)
    semester = models.CharField(max_length=7)
    unit = models.CharField(max_length=80)
    size = models.CharField(max_length=80)
    file_type = models.CharField(max_length=80)
    upload = models.FileField(upload_to='documents/')

    def __str__(self):
        return self.title


class MyDownload(models.Model):
    user = models.ForeignKey(User)
    book = models.ManyToManyField(Book)
    date = models.CharField(max_length=80)

    def __str__(self):
        return self.book


class MyRequest(models.Model):
    user = models.ForeignKey(User)
    date = models.CharField(max_length=80)
    title = models.CharField(max_length=80)
    description = models.CharField(max_length=80)
    course = models.ManyToManyField(Course)
    year = models.IntegerField()
    semester = models.IntegerField()
    unit = models.CharField(max_length=80)

    def __str__(self):
        return self.title








