from django.shortcuts import render
from .models import Main


def home(request):
    return render(request, 'front/home.html')


def about(request):
    return render(request, 'front/about.html')
