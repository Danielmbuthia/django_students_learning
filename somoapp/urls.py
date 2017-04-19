from django.conf.urls import url
from django.contrib import admin

from somoapp import views

urlpatterns = [
    url(r'^login/$',views.login_d, name='Login'),
    url(r'^register/$',views.register,name='Register'),
    url(r'^logout/$',views.logout_d,name="logout"),
    url(r'^profile/$',views.profile,name='profile'),
    url(r'^$',views.account,name='account'),
    url(r'^download/$',views.download,name='download'),
    url(r'^upload/$',views.upload,name='upload'),
    url(r'^requests/$',views.requests,name='request'),
    url(r'^users/$',views.users,name='users'),
    url(r'^system/$',views.system,name='system'),
    url(r'^dashboard/$',views.dashboard,name='dashboard'),


]
