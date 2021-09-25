from django.contrib.auth.models import User, Group, Permission
from django.core.exceptions import ValidationError
from django.core.files.storage import FileSystemStorage
from django.core.validators import validate_email
from django.shortcuts import render, redirect
from django.contrib import messages
from random import randint
from category.models import Category
from trending.models import Trending
from .models import Manager
from django.contrib.contenttypes.models import ContentType
from django.contrib.auth import authenticate, login, logout


def manager_list(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    manager = Manager.objects.all().exclude(user_txt='admin')

    return render(request, 'back/manager_list.html', {'manager': manager})
