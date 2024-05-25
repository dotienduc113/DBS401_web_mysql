from django.db import models
class Member(models.Model):
    firstname = models.CharField(max_length=256)
    lastname = models.CharField(max_length=256)
    phone = models.IntegerField(null=True)
    joined_date = models.DateField(null=True)
# Create your models here.

class Comment(models.Model):
    #name = models.CharField(max_length=128)
    number = models.IntegerField(null=True)
    name = models.CharField(max_length=80, null=True)
    body = models.CharField(max_length=300, null=True)
    #xss = models.TextField(null=True)

class Filter(models.Model):
    name = models.CharField(blank=True, null=True, max_length=150)
    number = models.IntegerField(null=True)

class File(models.Model):
    name = models.CharField(max_length=80, null=True)
    date = models.DateTimeField(null=True)
    file = models.FileField(upload_to="E:\\Web\\my_sale_web\\static")

#class Confirm(models.Model):
    #confirm = models.CharField(max_length=80, null=True)