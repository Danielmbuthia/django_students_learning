# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from datetime import datetime
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User

from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from somoapp.form import LoginForm, RegisterForm, ProfileForm, PasswordForm
from somoapp.models import UserAccount,Course, Book


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

                    return redirect('/')
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

    if request.user.is_authenticated():

        return redirect('/profile')
        messages.add_message(request, messages.INFO, 'Please update your profile')
    else:
        return render(request, 'login.html', {'form': form})


def register(request):
    if request.method == 'POST':
        form_register = RegisterForm(request.POST)
        #get form data
        if form_register.is_valid():
            email = form_register.cleaned_data.get('email')
            username = form_register.cleaned_data.get('username')
            password = form_register.cleaned_data.get('password')
            confirm_password = form_register.cleaned_data.get('password_confirm')
            print(email)
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
                    if len(password)<8:
                        messages.add_message(request,messages.INFO,'password must be atleast 8 characters')
                        return redirect('/register')
                    else:
                        # hash password
                        user.set_password(password)
                        # save data
                        user.save()
                        # redirect
                        messages.add_message(request, messages.INFO, 'created successfully')
                        return redirect('/login')

                else:
                    messages.add_message(request,messages.INFO,"password does not match")
                    return redirect('/register')

    else:
        form_register = RegisterForm()
    if request.user.is_authenticated():
        messages.add_message(request,messages.INFO,'please update your profile to proceed')
        return redirect('/profile')
    else:
        return render(request, 'register.html', {'form': form_register})


def logout_d(request):
    logout(request)
    return redirect('/login')


@login_required
def profile(request):
    current_user = request.user
    if request.method == 'POST':
        form_profile = ProfileForm(request.POST)
        form_password = PasswordForm(request.POST)
        if form_password.is_valid():
            new = form_password.cleaned_data.get('new_pass')
            confirm = form_password.cleaned_data.get('new_password')
            if new == confirm:
                user_model = User.objects.filter(username=current_user.username).first()
                if len(new) < 8:
                    messages.add_message(request, messages.INFO, 'password must be atleast 8 characters')
                    return redirect('/profile')
                else:
                    user_model.set_password(new)
                    user_model.save()

                    messages.add_message(request, messages.INFO, 'Password Change Successfully')
                    return redirect('/login')
            else:
                messages.add_message(request,messages.INFO,'password did not match')
        else:
            if form_profile.is_valid():
                lastname = form_profile.cleaned_data.get('lastname')
                firstname = form_profile.cleaned_data.get('firstname')
                user_model = User.objects.filter(username=current_user.username).first()
                user_model.first_name = firstname
                user_model.last_name = lastname
                user_model.save()

                return redirect('/')
                messages.add_message(request, messages.INFO, 'update done successfully ')


    else:
        form_password=PasswordForm()
        form_profile = ProfileForm()

    return render(request,'profile.html',{'form':form_profile,
                                          'form_password':form_password })


@login_required
def account(request):
    courses = Course.objects.all()
    books = Book.objects.all()
    context = {
        'courses': courses,
        'books': books
    }
    return render(request, 'account.html', context)


@login_required
def download(request):
    return render(request,'download.html',{})


@login_required
def upload(request):
    return render(request,'upload.html',{})


@login_required
def requests(request):
    return render(request,'requests.html',{})


@login_required
def users(request):
    users = User.objects.all()
    context = {
        'users':users
    }
    return render(request,'users.html',context)


@login_required
def system(request):
    return render(request,'system.html',{})


@login_required
def dashboard(request):
    courses = Course.objects.all()
    books = Book.objects.all()
    context = {
        'courses': courses,
        'books': books
    }
    return render(request,'dashboard.html',context)