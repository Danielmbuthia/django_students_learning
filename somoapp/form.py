from django import forms
from django.contrib.auth.models import User

from somoapp.models import Book


class LoginForm(forms.Form):
    model = User
    class Meta:
        fields = {
            'email',
            'password'
        }


class RegisterForm(forms.Form):
    email = forms.CharField(label='Email',max_length=80,
                            widget=forms.EmailInput(
                                attrs={
                                    'class':'form-control'
                                }
                            ))
    username = forms.CharField(label='Username',max_length=80,
                               widget=forms.TextInput(
                                   attrs={
                                       'class':'form-control'
                                   }
                               ))
    password =forms.CharField(label='Password',max_length=80,
                              widget=forms.PasswordInput(
                                  attrs={
                                      'class':'form-control'
                                  }
                              ))
    password_confirm = forms.CharField(label='Confirm Password',max_length=80,
                                       widget=forms.PasswordInput(
                                           attrs={
                                               'class':'form-control'
                                           }
                                       ))


class ProfileForm(forms.Form):
    mobile = forms.CharField(label='Mobile', max_length=13,
                             widget=forms.TextInput(
                                 attrs={
                                     'class': 'form-control'
                                 }
                             ))
    reg = forms.CharField(label='Reg Number', max_length=50,
                          widget=forms.TextInput(
                              attrs={
                                  'class': 'form-control'
                              }
                          ))
    firstname = forms.CharField(label='Firstname', max_length=80,
                                widget=forms.TextInput(
                                    attrs={
                                        'class': 'form-control'
                                    }
                                ))
    lastname = forms.CharField(label='Lastname', max_length=80,
                               widget=forms.TextInput(
                                   attrs={
                                       'class': 'form-control'
                                   }
                               ))


class PasswordForm(forms.Form):
    new_pass = forms.CharField(label='New Password',max_length=50,
                               widget=forms.PasswordInput(
                                   attrs={
                                       'class':'form-control'
                                   }
                               ))
    new_password = forms.CharField(label='Confirm Password',max_length=50,
                                   widget=forms.PasswordInput(
                                       attrs={
                                           'class':'form-control'
                                       }
                                   ))


class Books(forms.Form):
    model = Book
    class Meta:

        search_fields = {
            'course',
            'year',
            'semester'
        }


class UploadForm(forms.Form):
    upload = forms.FileField()
    title = forms.CharField(label='Title',max_length=50,
                            widget=forms.TextInput(attrs={
                                'class':'form-control'
                            }))
    description = forms.CharField(label='Description',max_length=200,
                                  widget=forms.Textarea(attrs={
                                      'class':'form-control'
                                  }))
    unit = forms.CharField(label='Unit',max_length=50,
                           widget=forms.TextInput(attrs={
                               'class':'form-control'
                           }))

