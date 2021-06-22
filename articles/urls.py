from django.conf.urls import url
from . import views

urlpatterns = [

    url(r'^article/(?P<pk>\d+)/$', views.article_detail, name='article_detail'),

]