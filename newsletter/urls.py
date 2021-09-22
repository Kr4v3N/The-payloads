from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^panel/newsletter/add', views.articles_letter, name='articles_letter'),
    url(r'^panel/newsletter/emails', views.articles_emails, name='articles_emails'),
    url(r'^panel/newsletter/del/(?P<pk>\d+)/$', views.articles_emails_delete, name='articles_emails_delete'),
]