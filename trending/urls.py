from django.urls import re_path as url
from . import views


urlpatterns = [
    url(r'^panel/trending/$', views.trending_add, name='trending_add'),
    url(r'^panel/trending/edit/(?P<pk>.*)/$', views.trending_edit, name='trending_edit'),
    url(r'^panel/trending/del/(?P<pk>.*)/$', views.trending_delete, name='trending_delete'),
]
