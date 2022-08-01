from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^panel/subcat/list/$', views.subcat_list, name='subcat_list'),
    url(r'^panel/subcat/add/$', views.subcat_add, name='subcat_add'),
    url(r'^panel/subcat/del/(?P<pk>.*)/$', views.subcat_delete, name='subcat_delete'),
]
