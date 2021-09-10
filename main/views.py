from django.shortcuts import render, get_object_or_404, redirect

from category.models import Category
from .models import Main
from articles.models import Articles
from subcategory.models import Subcategory

def home(request):
    site = Main.objects.get(pk=4)
    articles = Articles.objects.all().order_by('-pk')
    cat = Category.objects.all()
    lastarticles = Articles.objects.order_by('-pk')[:4]
    lastarticles2 = Articles.objects.order_by('-pk')[:4]
    subcat = Subcategory.objects.all()

    return render(request, 'front/home.html', {
        'site': site,
        'articles': articles,
        'category': cat,
        'lastarticles': lastarticles,
        'lastarticles2': lastarticles2,
        'subcat': subcat
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
