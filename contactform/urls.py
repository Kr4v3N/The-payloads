from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^contact/submit/$', views.contact_add, name='contact_add'),
    url(r'^panel/contactform/$', views.contact_list, name='contact_list'),
]
