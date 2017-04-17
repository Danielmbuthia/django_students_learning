# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from datetime import datetime
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User

from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from somoapp.form import LoginForm, RegisterForm


def login_d(request):
    form = LoginForm(request.POST or None)
    if form.is_valid():
        #get form data
        password = request.POST['password']
        email= request.POST['email']
        #check existence of the email
        try:
            user = User.objects.get(email=email)
            user = authenticate(username=user, password=password)
            if user is not None:
                if user.is_active:
                    login(request, user)

                    return redirect('/profile')
                else:
                    messages.add_message(request, messages.INFO, 'Your account is not active')
                    return redirect('/register')
            else:
                messages.add_message(request, messages.INFO, 'You provided invalid login credentials')
                return redirect('/login')
                # return render(request,'login.html',{'message':'Please check you login credentials'})
        except User.DoesNotExist:
            messages.add_message(request, messages.INFO, 'Your account does not exist')
            return redirect('/register')
    return render(request,'login.html',{'form':form})


def register(request):
    if request.method == 'POST':
        form_register = RegisterForm(request.POST)
        #get form data
        if form_register.is_valid():
            email = form_register.cleaned_data.get('email')
            username = form_register.cleaned_data.get('username')
            password = form_register.cleaned_data.get('password')
            confirm_password = form_register.cleaned_data.get('password_confirm')
            #check the sxistence of the user
            user = User.objects.filter(email=email).count()
            if user>0:
                messages.add_message(request,messages.INFO, 'email taken')
                return redirect('/register')
            else:
                # password match
                if password == confirm_password:
                    #assign data to model
                    user = User(
                        email=email,
                        username=username,
                        password=password,
                        last_login=datetime.now()
                    )
                    #hash password
                    user.set_password(password)
                    #save data
                    user.save()
                    #redirect
                    messages.add_message(request,messages.INFO,'created successfully')
                    return redirect('/login')
                else:
                    messages.add_message(request,messages.INFO,"password does not match")
                    return redirect('/register')

    else:
        form_register = RegisterForm()
    return render(request,'register.html',{'form':form_register})


def logout_d(request):
    logout(request)
    messages.add_message(request,messages.INFO,"logout done")
    return redirect('/login')


def profile(request):
    return render(request,'profile.html',{})