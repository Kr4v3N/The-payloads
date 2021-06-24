from django.shortcuts import render
from .models import Main
from articles.models import Articles


def home(request):
    site = Main.objects.get(pk=4)
    articles = Articles.objects.all()
    return render(request, 'front/home.html',
                  {'site': site,
                   'articles': articles
                   })


def about(request):
    site = Main.objects.get(pk=4)
    return render(request, 'front/about.html', {'site': site
                                                })


def panel(request):
    return render(request, 'back/home.html')
