import csv
from django.contrib import messages
from django.http import HttpResponse
from django.shortcuts import render, redirect

from main.models import Main
from articles.models import Articles
from .models import Category


def category_list(request):

    cat = Category.objects.all()

    return render(request, 'back/category_list.html', {'category': cat})