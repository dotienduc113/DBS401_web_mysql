from django.conf import settings
from django.core.files.storage import FileSystemStorage
from django.db import models

class FileSystemOverwriteStorage(FileSystemStorage):
    def get_available_name(self, name, max_length=None):
        self.delete(name)
        return super().get_available_name(name, max_length)
 
class OverwriteStorage(FileSystemStorage):
    def get_available_name(self, name, max_length=None):
        # If the file exists, remove it.
        if self.exists(name):
            os.remove(os.path.join(self.location, name))
        return name 
 
 
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
    #file = models.FileField(upload_to="E:\\Web\\my_sale_web\\static")
    #file = models.FileField(storage=FileSystemOverwriteStorage())
    file = models.FileField(upload_to=settings.MEDIA_ROOT, storage=OverwriteStorage())
    


class MyModel(models.Model):
    name = models.CharField(max_length=100)
    document = models.FileField(upload_to='uploads/', storage=OverwriteStorage())

    def __str__(self):
        return self.name
