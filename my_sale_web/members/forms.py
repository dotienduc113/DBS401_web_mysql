from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from .models import Comment, Filter, File


class LoginForm(forms.Form):
    username = forms.CharField(max_length=30)
    password1 = forms.CharField(widget=forms.PasswordInput())
    password2 = forms.CharField(widget=forms.PasswordInput())


class CreateUser(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'password1', 'password2']


class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        exclude = ['name', 'number', ]


class CommentFilter(forms.ModelForm):
    class Meta:
        model = Filter
        fields = ('name',)


class InfoUser(forms.ModelForm):
    class Meta:
        model = User
        fields = ['username']


class UpFile(forms.ModelForm):
    class Meta:
        model = File
        exclude = ['name', 'date', ]

#class Confirm(forms.ModelForm):
    #class Meta:
    #    model = Confirm
    #    fields = ['confirm']