import subprocess

from django.template import loader
from django.http import HttpResponse, HttpResponseRedirect
from .models import Member, Comment, File
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.shortcuts import redirect, render
from django.contrib.auth.forms import UserCreationForm
from .forms import LoginForm, CreateUser, CommentForm, CommentFilter, InfoUser, UpFile
from django.contrib.auth.models import User
from django.db import connection
from django.views.generic import TemplateView, ListView
from datetime import datetime
import os
from django.core.files.storage import FileSystemStorage


def members(request):
    mymembers = Member.objects.all().values()
    template = loader.get_template('template.html')
    context = {
        'mymembers': mymembers,
    }
    return HttpResponse(template.render(context, request))


def details(request, id):
    mymember = Member.objects.get(id=id)
    template = loader.get_template('details.html')
    context = {
        'mymember': mymember,
    }
    return HttpResponse(template.render(context, request))


def front(request):
    template = loader.get_template('front.html')
    return HttpResponse(template.render())

def generic(request):
    template = loader.get_template('generic.html')
    return HttpResponse(template.render())


''''def login(request):
    template = loader.get_template('login.html')
    return HttpResponse(template.render())'''

'''def login(request):
    template = loader.get_template('login.html')
    return render(request, 'login.html', {})'''


def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)
        if user is not None:
            auth.login(request, user)
            return redirect('/')
        else:
            return redirect('accounts/login')
    else:
        return render(request, 'login.html')


def register(request):
    form = CreateUser()
    if request.method == 'POST':
        form = CreateUser(request.POST)
        if form.is_valid():
            form.save()
            user = form.cleaned_data.get('username')
            messages.success(request, 'Account "%s" created' % user)
            return redirect('/accounts/login')

    return render(request, 'signup.html', {'form': form})

'''
def banana(request):
    # template = loader.get_template('fruit/banana.html')

    template = loader.get_template('banana.html')
    return HttpResponse(template.render())
'''

def comment_form(request):
    form = CommentForm()
    form2 = CommentFilter()
    name = request.user
    if request.method == 'POST':
        form = CommentForm(request.POST)
        form2 = CommentFilter(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.name = request.user
            comment.number = 1
            comment.save()
            return redirect('/fruit/banana')
        elif form2.is_valid():
            c = str(form2.cleaned_data['name'])
            # ' or '1' = '1
            block1 = "' and "
            block2 = "' or " 
            if block1 in c or block2 in c:
                return redirect('/fruit/banana')    
            comments = Comment.objects.raw("select * from members_comment where number = 1 and name = '{}' ".format(c))
            context = {
                'comments': comments,
            }
            context.update({"form2": form2})
            # context.update({"autoescape": False})  --> XSS <script>alert(1)</script>
            return HttpResponse(render(request, 'fruit/banana.html', context))
    comments = Comment.objects.raw("select * from members_comment where number = 1 and name = '{}' ".format(name))
    context = {
        'comments': comments,
    }
    context.update({"form": form})
    context.update({"form2": form2})
    return HttpResponse(render(request, 'fruit/banana.html', context))

def comment_form_strawberry(request):
    form = CommentForm()
    form2 = CommentFilter()
    name = request.user
    if request.method == 'POST':
        form = CommentForm(request.POST)
        form2 = CommentFilter(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.name = request.user
            comment.number = 3
            comment.save()
            return redirect('/fruit/strawberry')
        elif form2.is_valid():
            c = str(form2.cleaned_data['name'])
            # ' or '1' = '1' -- -
            block1 = "' and "
            block2 = "' or " 
            if block1 in c or block2 in c:
                return redirect('/fruit/strawberry')    
            comments = Comment.objects.raw("select * from members_comment where number = 3 and name = '{}' ".format(c))
            context = {
                'comments': comments,
            }
            context.update({"form2": form2})
            #context.update({"autoescape": False})  #--> XSS <script>alert(1)</script>
            return HttpResponse(render(request, 'fruit/strawberry.html', context))
    comments = Comment.objects.raw("select * from members_comment where number = 3 and name = '{}' ".format(name))
    context = {
        'comments': comments,
    }
    context.update({"form": form})
    context.update({"form2": form2})
    return HttpResponse(render(request, 'fruit/strawberry.html', context))

def comment_form_pineapple(request):
    form = CommentForm()
    form2 = CommentFilter()
    name = request.user
    if request.method == 'POST':
        form = CommentForm(request.POST)
        form2 = CommentFilter(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.name = request.user
            comment.number = 2
            comment.save()
            return redirect('/fruit/pineapple')
        elif form2.is_valid():
            c = str(form2.cleaned_data['name'])
            # ' or '1' = '1
            block1 = "' and "
            block2 = "' or " 
            if block1 in c or block2 in c:
                return redirect('/fruit/pineapple')    
            comments = Comment.objects.raw("select * from members_comment where number = 2 and name = '{}' ".format(c))
            context = {
                'comments': comments,
            }
            context.update({"form2": form2})
            #context.update({"autoescape": False})  #--> XSS <script>alert(1)</script>
            return HttpResponse(render(request, 'fruit/pineapple.html', context))
    comments = Comment.objects.raw("select * from members_comment where number = 4 and name = '{}' ".format(name))
    context = {
        'comments': comments,
    }
    context.update({"form": form})
    context.update({"form2": form2})
    return HttpResponse(render(request, 'fruit/pineapple.html', context))


def comment_form_apple(request):
    form = CommentForm()
    form2 = CommentFilter()
    name = request.user
    if request.method == 'POST':
        form = CommentForm(request.POST)
        form2 = CommentFilter(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.name = request.user
            comment.number = 4
            comment.save()
            return redirect('/fruit/apple')
        elif form2.is_valid():
            c = str(form2.cleaned_data['name'])
            # ' or '1' = '1
            block1 = "' and "
            block2 = "' or " 
            if block1 in c or block2 in c:
                return redirect('/fruit/apple')    
            comments = Comment.objects.raw("select * from members_comment where number = 4 and name = '{}' ".format(c))
            context = {
                'comments': comments,
            }
            context.update({"form2": form2})
            #context.update({"autoescape": False}) # --> XSS <script>alert(1)</script>
            return HttpResponse(render(request, 'fruit/apple.html', context))
    comments = Comment.objects.raw("select * from members_comment where number = 4 and name = '{}' ".format(name))
    context = {
        'comments': comments,
    }
    context.update({"form": form})
    context.update({"form2": form2})
    return HttpResponse(render(request, 'fruit/apple.html', context))

def user(request, id):
    try:
        myuser = User.objects.get(id=id)
        cursor = connection.cursor()
        if request.method == 'POST':
            cursor.execute("Delete from auth_user where id = {0}".format(id))
            return redirect('/')
        template = loader.get_template('user.html')
        context = {
            'myuser': myuser,
        }
        return HttpResponse(template.render(context, request))
    except:
        return HttpResponse(render(request, 'blank.html'))


'''def user(request, id):
    myuser = User.objects.get(id=id)
    template = loader.get_template('user.html')
    context = {
        'myuser': myuser,
    }
    # prevent authorization   --> -->
    if myuser.id == request.user.id:
        return HttpResponse(template.render(context, request))
    else:
        template = loader.get_template('blank.html')
        return HttpResponse(template.render(context, request))'''


def filter_comment(request):
    form2 = CommentFilter()
    if request.method == 'POST':
        form2 = CommentFilter(request.POST)
        if form2.is_valid():
            c = form2.cleaned_data['name']
            comments = Comment.objects.raw(
                "select * from members_comment where number = 1 and name = {0}".format(c))
            context = {
                'comments': comments,
            }
            context.update({"form": form2})
            return HttpResponse(render(request, 'filter.html', context))
    return render(request, 'filter.html', {'form': form2})


def Info_User(request):
    info = InfoUser()
    if request.method == 'POST':
        info = InfoUser(request.POST)
        ifo = request.POST.get('username')
        for word in ifo:
            if word == '&' or word == '|' or word == ',' or word ==  '`' or word == '$' or word == '(' or word == '%' or word == '#' or word == '^':
               return HttpResponse(render(request, 'failed_info.html'))
        # & whoami &
        # & cd ../../../ & curl http://127.0.0.1:8000/search/ > 2.txt ||
        command = "FINDSTR {} userinfo.txt".format(ifo) #windows
        try:
            result = subprocess.check_output(command, shell=True, encoding='UTF-8')
            context = {
                'result': result,
            }
            context.update({"form": info})
            return HttpResponse(render(request, 'info.html', context))
        except:
            return HttpResponse(render(request, 'failed_info.html'))
    return HttpResponse(render(request, 'info.html', {"form": info}))

'''
def FileUpload(request):
    file = UpFile()
    if request.method == 'POST':
        file = UpFile(request.POST, request.FILES)
        if file.is_valid():
            f = file.save(commit=False)
            f.name = str(request.user)
            f.date = str(datetime.now())
            upload_file = request.FILES['file']
            fs = FileSystemStorage()
            fs.save(f.name, upload_file)
            """file_name = str(file.cleaned_data.get('file'))
            lst = file_name.split()
            if len(lst) > 1:
                file_name = "_".join(lst)
            file_path = "E:\\Web\\my_sale_web\\my_sale_web\\static\\" + file_name"""
            context = {"form": file}
            return render(request, 'upload.html', context)
    f = File.objects.all()
    file_upload = File.objects.all()
    context = {
        'file_upload': file_upload,
    }

    return render(request, 'upload.html', {"form": file})
'''


def FileUpload(request):
    context = {}
    if request.method == "POST":
        upload_file = request.FILES['document']
        fs = FileSystemStorage()
        name = fs.save(upload_file.name, upload_file)
        context['url'] = fs.url(name)
    return render(request, 'upload.html', context)


def File_Download(request, file_path):
    block = "../"
    block1 = "/./"
    block2 = ".//"
    if block2 in file_path:
        file_path = file_path.replace(block2,"")
    elif block1 in file_path:
        file_path = file_path.replace(block1,"")
    elif block in file_path:
        file_path = file_path.replace(block,"")
    file_path = os.path.dirname(os.path.realpath('info')) + '/' + file_path
    #print(file_path)
    response = request.POST.get(file_path)
    if not os.path.exists(file_path):
        return HttpResponse("File not found.", status=404)

    # Open the file and read its content
    with open(file_path, 'rb') as file:
        file_content = file.read()

    # Create the HTTP response with the file content and appropriate headers
    response = HttpResponse(file_content, content_type='application/octet-stream')
    response['Content-Disposition'] = 'attachment; filename="userinfo.txt"'
    
    return response

'''
def All_Users(request):
    if request.method == "POST":
        confirmation = request.POST.get('confirmation', '')
        file_path = os.path.abspath(confirmation.lower())  # Path to your text file
        print(file_path)
        try:
            with open(file_path, 'r') as file:
                content = file.read()
                args = {'result' : content }
                return render(request, 'confirm.html', args)
        except FileNotFoundError:
            content = "File not found."
    return render(request, 'confirm.html')




    file_path = os.path.abspath(file_path) # Path to your text file
    try:
        with open(file_path, 'r') as file:
            content = file.read()
    except FileNotFoundError:
        content = "File not found."

    return render(request, 'read_text.html', {'content': content})        
'''


