from django.conf.urls import url
from django.urls import path

from . import views

urlpatterns = [

    url(r'article/(?P<word>.*)/$', views.article_detail, name='article_detail'),
    url(r'^panel/articles/list/$', views.articles_list, name='articles_list'),
    url(r'^panel/articles/add/$', views.articles_add, name='articles_add'),
    url(r'^panel/articles/del/(?P<pk>\d+)/$', views.articles_delete, name='articles_delete'),
    url(r'^panel/articles/edit/(?P<pk>\d+)/$', views.articles_edit, name='articles_edit'),
    path('panel/news/publish/<int:pk>', views.articles_publish, name='articles_publish'),

]
