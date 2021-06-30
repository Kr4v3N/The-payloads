from django.contrib import messages
from django.shortcuts import render, redirect
from .models import Articles
from main.models import Main
from django.core.files.storage import FileSystemStorage

def articles_list(request):
    articles = Articles.objects.all()
    return render(request, 'back/articles_list.html', {
        'articles': articles
    })


def article_detail(request, word):
    site = Main.objects.get(pk=4)
    articles = Articles.objects.filter(name=word)

    return render(request, 'front/article_detail.html',
                  {'articles': articles,
                   'site': site,
                   })


def articles_add(request):

    if request.method == 'POST':

        articletitle = request.POST.get('articletitle')
        articlecategory = request.POST.get('articlecategory')
        articletxtshort = request.POST.get('articletxtshort')
        articletxt = request.POST.get('articletxt')

        if articletitle == "" \
                or articletxtshort == "" \
                or articletxt == "" \
                or articlecategory == "":
            error = "Tous les champs sont requis"
            return render(request, 'back/messages.html', {'error': error})

        myfile = request.FILES['myfile']
        fs = FileSystemStorage()
        filename = fs.save(myfile.name, myfile)
        url = fs.url(filename)

        b = Articles(name=articletitle,
                     short_txt=articletxtshort,
                     body_txt=articletxt,
                     date="12_octobre_2021",
                     time="",
                     pic_name="-",
                     pic_url=url,
                     writer="test",
                     category_name=articlecategory,
                     category_id=0,
                     comments=0,
                     show=0)
        b.save()
        return redirect('articles_add')

    return render(request, 'back/articles_add.html')
