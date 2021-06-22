from django.shortcuts import render
from .models import Articles
from main.models import Main


def article_detail(request, pk):
    site = Main.objects.get(pk=4)
    articles = Articles.objects.filter(pk=pk)

    return render(request, 'front/article_detail.html',
                  {'articles': articles,
                   'site': site,
                   })
