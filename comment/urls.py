from django.urls import path

from . import views

urlpatterns = [

    path('comment/add/article/<int:pk>', views.comments_add, name='comments_add'),
    path('comments/list/', views.comments_list, name='comments_list'),
    path('panel/comments/delete/<int:pk>', views.comments_delete, name='comments_delete'),
    path('panel/comment/confirm/<int:pk>', views.comments_confirm, name='comments_confirm'),

]

