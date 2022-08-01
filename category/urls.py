from django.conf.urls import url
from django.urls import path

from . import views

urlpatterns = [

    url(r'^panel/category/list/$', views.category_list, name='category_list'),
    url(r'^panel/category/add/$', views.category_add, name='category_add'),
    url(r'^panel/category/del/(?P<pk>.*)/$', views.category_delete, name='category_delete'),
    path('category/<slug:slug>/', views.category_show, name='category_show'),

]
