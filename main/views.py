from django.shortcuts import render
from .models import Main


def home(request):

    return render(request, 'home.html')
