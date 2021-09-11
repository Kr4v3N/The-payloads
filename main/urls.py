from . import views
from django.conf.urls import url

urlpatterns = [

    url(r'^$', views.home, name='home'),
    url(r'^about/$', views.about, name='about'),
    url(r'^panel/$', views.panel, name='panel'),
    url(r'^login/$', views.my_login, name='my_login'),
    url(r'^logout/$', views.my_logout, name='my_logout'),

]