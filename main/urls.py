from . import views
from django.conf.urls import url

urlpatterns = [

    url(r'^$', views.home, name='home'),
    url(r'^about/$', views.about, name='about'),
    url(r'^panel/$', views.panel, name='panel'),
    url(r'^login/$', views.my_login, name='my_login'),
    url(r'^logout/$', views.my_logout, name='my_logout'),
    url(r'^panel/setting/$', views.site_setting, name='site_setting'),
    url(r'^panel/about/setting/$', views.about_setting, name='about_setting'),
    url(r'^contact/$', views.contact, name='contact'),
    url(r'^panel/change/pass/$', views.change_pass, name='change_pass'),
    url(r'^panel/answer/comment/(?P<pk>\d+)/$', views.answer_cmt, name='answer_cmt'),
]