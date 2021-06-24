from django.conf.urls import url
from . import views

urlpatterns = [

    # path(r'article/<str:word>', views.article_detail, name='article_detail'),
    url(r'article/(?P<word>.*)/$', views.article_detail, name='article_detail'),
    url(r'^panel/articles/list/$', views.articles_list, name='articles_list'),

]
