from django import forms
from django.contrib.auth.models import User


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