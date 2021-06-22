from django.shortcuts import render
from .models import Articles


def article_detail(request, pk):

    article = Articles.objects.filter(pk=pk)

    return render(request, 'front/article_detail.html',
                  {'article': article
                   })
