from django.shortcuts import render, get_object_or_404, redirect

from category.models import Category
from .models import Main
from articles.models import Articles


def home(request):
    site = Main.objects.get(pk=4)
    articles = Articles.objects.all().order_by('-pk')
    cat = Category.objects.all()

    return render(request, 'front/home.html', {
        'site': site,
        'articles': articles,
        'category': cat,
    })


def about(request):
    site = Main.objects.get(pk=4)
    articles = Articles.objects.all()
    cat = Category.objects.all()
    return render(request, 'front/about.html', {
        'site': site,
        'articles': articles,
        'category': cat
    })


def panel(request):
    return render(request, 'back/home.html')
