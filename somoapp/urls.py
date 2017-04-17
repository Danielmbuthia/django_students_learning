from django.conf.urls import url
from django.contrib import admin

from somoapp import views

urlpatterns = [
    url(r'^login/$',views.login_d, name='Login'),
    url(r'^register/$',views.register,name='Register'),
    url(r'^logout/$',views.logout_d,name="logout"),
    url(r'^profile/$',views.profile,name='profile')

]
