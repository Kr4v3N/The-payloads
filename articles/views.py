from django.shortcuts import render
from .models import Articles
from main.models import Main


def article_detail(request, word):
    site = Main.objects.get(pk=4)
    articles = Articles.objects.filter(name=word)

    return render(request, 'front/article_detail.html',
                  {'articles': articles,
                   'site': site,
                   })


def articles_list(request):

    articles = Articles.objects.all()
    return render(request, 'back/articles_list.html', {
        'articles': articles
    })


def articles_add(request):

    return render(request, 'back/articles_add.html')
