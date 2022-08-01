from django.urls import re_path as url
from django.urls import path
from . import views

urlpatterns = [
    url(r'^panel/manager/list/$', views.manager_list, name='manager_list'),
    # url(r'^panel/newsletter/del/(?P<pk>\d+)/$', views.articles_emails_delete, name='articles_emails_delete'),
    #
    #
    # path('panel/manager/list', views.manager_list, name='manager_list'),
    # path('panel/manager/del/<int:pk>', views.manager_delete, name='manager_delete'),

]
