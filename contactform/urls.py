from django.urls import re_path as url
from . import views


urlpatterns = [
    url(r'^contact/submit/$', views.contact_add, name='contact_add'),
    url(r'^panel/contactform/$', views.contact_list, name='contact_list'),
    url(r'^panel/contactform/del/(?P<pk>\d+)/$', views.contact_delete, name='contact_delete'),
]
