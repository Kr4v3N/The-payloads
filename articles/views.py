import datetime

from django.contrib import messages
from django.shortcuts import render, redirect

from category.models import Category
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
    category = Category.objects.all()
    lastarticles = Articles.objects.all().order_by('-pk')[:3]

    return render(request, 'front/article_detail.html', {
        'articles': articles,
        'site': site,
        'category': category,
        'lastarticles': lastarticles,
    })


def articles_add(request):
    now = datetime.datetime.now()
    year = now.year
    month = now.month
    day = now.day
    hour = now.hour
    minute = now.minute

    if len(str(month)) == 1:
        month = '0' + str(month)
    if len(str(day)) == 1:
        day = '0' + str(day)
    if len(str(hour)) == 1:
        hour = '0' + str(hour)
    if len(str(minute)) == 1:
        minute = '0' + str(minute)

    today = str(day) + '/' + str(month) + '/' + str(year)
    time = str(hour) + 'H' + str(minute)

    category = Category.objects.all()

    if request.method == 'POST':

        articletitle = request.POST.get('articletitle')
        articlecategory = request.POST.get('articlecategory')
        articletxtshort = request.POST.get('articletxtshort')
        articletxt = request.POST.get('articletxt')

        if articletitle == "" \
                or articletxtshort == "" \
                or articletxt == "" \
                or articlecategory == "":
            messages.error(request, "Tous les champs sont requis")
            return redirect('articles_add')

        try:

            myfile = request.FILES['myfile']
            fs = FileSystemStorage()
            filename = fs.save(myfile.name, myfile)
            url = fs.url(filename)

            if str(myfile.content_type).startswith("image"):

                if myfile.size < 4000000:

                    b = Articles(name=articletitle,
                                 short_txt=articletxtshort,
                                 body_txt=articletxt,
                                 date=today,
                                 time=time,
                                 pic_name=filename,
                                 pic_url=url,
                                 writer="test",
                                 category_name=articlecategory,
                                 category_id=0,
                                 comments=0,
                                 show=0)
                    b.save()

                    messages.success(request, "Votre article a été ajouté avec succès")
                    return redirect('articles_list')
                else:
                    fs = FileSystemStorage()
                    fs.delete(filename)

                    messages.error(request, "L'image ne doit pas dépasser 5 MB")
                    return redirect('articles_add')

            else:
                fs = FileSystemStorage()
                fs.delete(filename)

                messages.error(request, "Le format de votre fichier n'est pas supporté")
                return redirect('articles_add')

        except:

            messages.error(request, "Vous devez ajouter une image")
            return redirect('articles_add')

    return render(request, 'back/articles_add.html', {
        'category': category,
    })


def articles_delete(request, pk):
    try:

        b = Articles.objects.get(pk=pk)

        fs = FileSystemStorage()
        fs.delete(b.pic_name)

        b.delete()

        messages.success(request, "L'articles a bien été supprimé")
        return redirect('articles_list')

    except:

        messages.error(request, "Quelque chose c'est mal passée")
        return redirect('articles_list')


def articles_edit(request, pk):

    articles = Articles.objects.get(pk=pk)
    category = Category.objects.all()

    if len(Articles.objects.filter(pk=pk)) == 0:
        messages.error(request, "Article non trouvée")
        return redirect('articles_list')

    return render(request, 'back/articles_edit.html', {
        'pk': pk,
        'articles': articles,
        'category': category
    })
