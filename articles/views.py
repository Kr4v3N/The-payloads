import datetime

from django.contrib import messages
from django.shortcuts import render, get_list_or_404, redirect
from subcategory.models import Subcategory
from category.models import Category
from .models import Articles
from main.models import Main
from django.core.files.storage import FileSystemStorage


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


def articles_list(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    articles = Articles.objects.all()
    subcat = Subcategory.objects.all()
    return render(request, 'back/articles_list.html', {
        'articles': articles,
        'subcat': subcat
    })


def articles_add(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

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

    cat = Subcategory.objects.all()

    if request.method == 'POST':

        articletitle = request.POST.get('articletitle')
        articlecat = request.POST.get('articlecat')
        articletxtshort = request.POST.get('articletxtshort')
        articletxt = request.POST.get('articletxt')
        articleid = request.POST.get('articlecat')

        if articletitle == "" \
                or articlecat == "" \
                or articletxtshort == "" \
                or articletxt == "":
            messages.error(request, "Tous les champs sont requis")
            return redirect('articles_add')

        try:

            myfile = request.FILES['myfile']
            fs = FileSystemStorage()
            filename = fs.save(myfile.name, myfile)
            url = fs.url(filename)

            if str(myfile.content_type).startswith("image"):

                if myfile.size < 3000000:

                    articlesname = Subcategory.objects.get(pk=articleid).name
                    ocatid = Subcategory.objects.get(pk=articleid).catid

                    b = Articles(name=articletitle,
                                 short_txt=articletxtshort,
                                 body_txt=articletxt,
                                 date=today,
                                 time=time,
                                 pic_url=url,
                                 pic_name=filename,
                                 writer=request.user,
                                 catname=articlesname,
                                 catid=articleid,
                                 comments=0,
                                 show=0,
                                 ocatid=ocatid,
                                 )

                    b.save()

                    count = len(Articles.objects.filter(ocatid=ocatid))

                    b = Category.objects.get(pk=ocatid)
                    b.count = count
                    b.save()

                    messages.success(request, "Votre article a été ajouté avec succès")
                    return redirect('articles_list')
                else:
                    fs = FileSystemStorage()
                    fs.delete(filename)

                    messages.error(request, "L'image ne doit pas dépasser 3 MB")
                    return redirect('articles_add')
            else:
                fs = FileSystemStorage()
                fs.delete(filename)

                messages.error(request, "Le format de votre fichier n'est pas supporté")
                return redirect('articles_add')
        except:
            messages.error(request, "Vous devez ajouter une image")
            return redirect('articles_add')

    return render(request, 'back/articles_add.html', {'cat': cat})


def articles_delete(request, pk):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    try:
        b = Articles.objects.get(pk=pk)
        fs = FileSystemStorage()
        fs.delete(b.pic_name)

        ocatid = Articles.objects.get(pk=pk).ocatid

        b.delete()

        count = len(Articles.objects.filter(ocatid=ocatid))

        m = Category.objects.get(pk=ocatid)
        m.count = count

        m.save()

        messages.success(request, "L'articles a bien été supprimé")
        return redirect('articles_list')

    except:
        messages.error(request, "Quelque chose c'est mal passée")
        return redirect('articles_list')


def articles_edit(request, pk):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    if len(Articles.objects.filter(pk=pk)) == 0:

        messages.error(request, "Article non trouvée")
        return redirect('articles_list')

    articles = Articles.objects.get(pk=pk)
    cat = Subcategory.objects.all()

    if request.method == 'POST':

        articletitle = request.POST.get('articletitle')
        articlecat = request.POST.get('articlecat')
        articletxtshort = request.POST.get('articletxtshort')
        articletxt = request.POST.get('articletxt')
        articleid = request.POST.get('articlecat')

        if articletitle == "" \
                or articlecat == "" \
                or articletxtshort == "" \
                or articletxt == "":
            messages.error(request, "Tous les champs sont requis")
            return redirect('articles_edit')

        try:

            myfile = request.FILES['myfile']
            fs = FileSystemStorage()
            filename = fs.save(myfile.name, myfile)
            url = fs.url(filename)

            if str(myfile.content_type).startswith("image"):

                if myfile.size < 3000000:

                    articlename = Subcategory.objects.get(pk=articleid).name

                    b = Articles.objects.get(pk=pk)

                    fss = FileSystemStorage()
                    fss.delete(b.pic_name)

                    b.name = articletitle
                    b.short_txt = articletxtshort
                    b.body_txt = articletxt
                    b.pic_name = filename
                    b.pic_url = url
                    b.catname = articlename
                    b.catid = articleid

                    b.save()

                    messages.success(request, "Votre article a été modifié avec succès")
                    return redirect('articles_list')
                else:
                    fs = FileSystemStorage()
                    fs.delete(filename)

                    messages.error(request, "L'image ne doit pas dépasser 3 MB")
                    return redirect('articles_edit')
            else:
                fs = FileSystemStorage()
                fs.delete(filename)

                messages.error(request, "Le format de votre fichier n'est pas supporté")
                return redirect('articles_edit')
        except:

            articlename = Subcategory.objects.get(pk=articleid).name

            b = Articles.objects.get(pk=pk)

            b.name = articletitle
            b.short_txt = articletxtshort
            b.body_txt = articletxt
            b.catname = articlename
            b.catid = articleid

            b.save()

            messages.success(request, "Votre article a été modifié avec succès")
            return redirect('articles_list')

    return render(request, 'back/articles_edit.html', {
        'pk': pk,
        'articles': articles,
        'cat': cat,
    })
