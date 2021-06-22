from django.shortcuts import render
from .models import Main


def home(request):
    site = Main.objects.get(pk=4)

    return render(request, 'front/home.html', {'site': site
                                               })


def about(request):

    site = Main.objects.get(pk=4)

    return render(request, 'front/about.html', {'site': site
                                                })
