from django.urls import re_path as url
from . import views
from django.urls import path

urlpatterns = [

     url(r'^blacklist/$', views.black_list, name='black_list'),
     url(r'^blacklist/add/$', views.ip_add, name='ip_add'),
     url(r'^blacklist/del/(?P<pk>\d+)/$', views.ip_delete, name='ip_delete'),
]