from django.urls import path
from django.urls import re_path as url
from . import views

urlpatterns = [

    path('article/<slug:slug>', views.article_detail, name='article_detail'),
    url(r'^panel/articles/add/$', views.articles_add, name='articles_add'),
    url(r'^panel/articles/list/$', views.articles_list, name='articles_list'),
    url(r'^panearticles/del/(?P<pk>\d+)/$', views.articles_delete, name='articles_delete'),
    url(r'^panel/articles/edit/(?P<pk>\d+)/$', views.articles_edit, name='articles_edit'),
    url(r'^panel/articles/publish/(?P<pk>\d+)/$', views.articles_publish, name='articles_publish'),
    url(r'^articles/all/$', views.all_articles, name='all_articles'),
    url(r'^articles/all/search$', views.all_articles_search, name='all_articles_search'),
    url(r'^tag/(?P<pk>\d+)/articles/$', views.articles_by_tag, name='articles_by_tag'),
    url(r'^archives/(?P<year>[0-9]{4})/(?P<month>[0-9]{1,2})/articles/$', views.articles_by_archive, name='articles_by_archive'),
]
