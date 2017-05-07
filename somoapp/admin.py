# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

# Register your models here.

from somoapp.models import UserAccount, Book, Course, MyDownload, MyRequest

admin.site.register(Book)
admin.site.register(UserAccount)
admin.site.register(Course)
admin.site.register(MyDownload)
admin.site.register(MyRequest)
