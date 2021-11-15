from django.conf.urls import url
from django.urls import path

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
]
