from django.urls import path
from . import views

urlpatterns = [

    path(r'article/<str:word>', views.article_detail, name='article_detail'),

]
