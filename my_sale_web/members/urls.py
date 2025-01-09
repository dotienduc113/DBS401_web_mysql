from django.urls import path, include
from . import views
from django.contrib.auth import views as auth_views
from django.views.generic.base import TemplateView
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    #path('members/', views.members, name='members'),
    #path('members/details/<int:id>', views.details, name='details'),
    path("", TemplateView.as_view(template_name="index.html"), name="home"),
    path('accounts/login/', auth_views.LoginView.as_view(template_name="login.html"), name="login"),
    path('accounts/signup/', views.register, name='accounts/signup/'),
    # path('login/', auth_views.LoginView.as_view(next_page='/members', template_name="log.html"), name="login"),
    path('logout/', auth_views.LogoutView.as_view(next_page='/'), name='logout'),
    # path("fruit/banana", TemplateView.as_view(template_name="fruit/banana.html"), name="banana"),
    path("fruit/banana", views.comment_form, name="banana"),
    path("fruit/pineapple", views.comment_form_pineapple, name="pineapple"),
    path("fruit/strawberry", views.comment_form_strawberry, name="strawberry"),
    path("fruit/apple", views.comment_form_apple, name="apple"),
    path("user/id=<int:id>", views.user, name='user'),
    path("filter/", views.filter_comment, name="filter"),
    path("search/", views.Info_User, name="search"),
    # path("file/filename=<str:path>",views.FileUpload, name="file"),
    path("file/", views.FileUpload, name="file"),
    path("generic/", views.generic, name="generic"),
    #path("", TemplateView.as_view(template_name="generic.html"), name="generic"),
    path("download/", views.File_Download, name='Download'),
    #path('confirm/', views.All_Users, name='confirm'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
if not settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)