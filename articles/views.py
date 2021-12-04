import datetime
from django.contrib import messages
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import render, redirect
from comment.models import Comment
from subcategory.models import Subcategory
from category.models import Category
from trending.models import Trending
from .models import Articles
from main.models import Main
from django.core.files.storage import FileSystemStorage
from itertools import chain

mysearch = ""


def article_detail(request, slug):
    site = Main.objects.get(pk=4)
    cat = Category.objects.all()
    subcat = Subcategory.objects.all()
    poparticles = Articles.objects.filter(activated=1).order_by('-show')[:3]


    showarticles = Articles.objects.filter(slug=slug)

    tagname = Articles.objects.get(slug=slug).tag
    tag = tagname.split(',')
    trending = Trending.objects.all().order_by('-pk')

    try:
        mynews = Articles.objects.get(slug=slug)
        mynews.show = mynews.show + 1
        mynews.save()
    except:
        print("Can't add show")

    code = Articles.objects.get(slug=slug).pk
    comment = Comment.objects.filter(article_id=code, status=1).order_by('-pk')[:6]
    comment_count = len(comment)

    return render(request, 'front/article_detail.html', {
        'site': site,
        'cat': cat,
        'subcat': subcat,
        'showarticles': showarticles,
        'poparticles': poparticles,
        'tagname': tagname,
        'tag': tag,
        'trending': trending,
        'code': code,
        'comment': comment,
        'comment_count': comment_count,
    })


def articles_list(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    articles = Articles.objects.all()
    subcat = Subcategory.objects.all()

    paginator = Paginator(articles, 10)
    page = request.GET.get('page')

    try:
        articles = paginator.page(page)
    except EmptyPage:
        articles = paginator.page(paginator.num_pages)
    except PageNotAnInteger:
        articles = paginator.page(1)

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
        tag = request.POST.get('tag')

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
                                 show=0,
                                 ocatid=ocatid,
                                 tag=tag
                                 )
                    b.save()
                    count = len(Articles.objects.filter(ocatid=ocatid))
                    b = Category.objects.get(pk=ocatid)
                    b.count = count
                    b.save()
                    messages.success(request, "Votre article '{}' a été ajouté avec succès".format(filename))
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
            fs = FileSystemStorage()
            fs.delete(filename)
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

        messages.success(request, "L'articles {} a bien été supprimé".format(b))
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
        tag = request.POST.get('tag')

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
                    b.tag = tag
                    b.activated = 0

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
            b.tag = tag

            b.save()

            messages.success(request, "Votre article a été modifié avec succès")
            return redirect('articles_list')

    return render(request, 'back/articles_edit.html', {
        'pk': pk,
        'articles': articles,
        'cat': cat,
    })


def articles_publish(request, pk):
    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    news = Articles.objects.get(pk=pk)
    news.activated = 1
    news.save()

    return redirect('articles_list')


def all_articles(request):
    allnews = Articles.objects.all()

    site = Main.objects.get(pk=4)
    news = Articles.objects.filter(activated=1).order_by('-pk')
    cat = Category.objects.all()
    subcat = Subcategory.objects.all()
    lastnews = Articles.objects.filter(activated=1).order_by('-pk')[:3]
    popnews = Articles.objects.filter(activated=1).order_by('-show')
    popnews2 = Articles.objects.filter(activated=1).order_by('-show')[:3]
    trending = Trending.objects.all().order_by('-pk')[:5]
    lastnews2 = Articles.objects.filter(activated=1).order_by('-pk')[:4]

    paginator = Paginator(allnews, 12)
    page = request.GET.get('page')

    try:
        allnews = paginator.page(page)
    except EmptyPage:
        allnews = paginator.page(paginator.num_pages)
    except PageNotAnInteger:
        allnews = paginator.page(1)

    return render(request, 'front/all_articles.html', {
        'site': site,
        'news': news,
        'cat': cat,
        'subcat': subcat,
        'lastnews': lastnews,
        'popnews': popnews,
        'popnews2': popnews2,
        'trending': trending,
        'lastnews2': lastnews2,
        'allnews': allnews,
    })


def all_articles_search(request):
    if request.method == 'POST':

        txt = request.POST.get('txt')

        # if len(Articles.objects.filter(name__contains=txt)) != 0:
        #     # return redirect('all_articles_search')

        a = Articles.objects.filter(name__contains=txt)
        b = Articles.objects.filter(short_txt__contains=txt)
        c = Articles.objects.filter(body_txt__contains=txt)

        allnewss = list(chain(a, b, c))
        allnewss = list(dict.fromkeys(allnewss))

        if allnewss == "":
            messages.error(request, "Titre non trouvé")
    else:

        a = Articles.objects.filter(name__contains=mysearch)
        b = Articles.objects.filter(short_txt__contains=mysearch)
        c = Articles.objects.filter(body_txt__contains=mysearch)

        allnewss = list(chain(a, b, c))
        allnewss = list(dict.fromkeys(allnewss))

    site = Main.objects.get(pk=4)
    news = Articles.objects.filter(activated=1).order_by('-pk')
    cat = Category.objects.all()
    subcat = Subcategory.objects.all()
    lastnews = Articles.objects.filter(activated=1).order_by('-pk')[:3]
    popnews = Articles.objects.filter(activated=1).order_by('-show')
    popnews2 = Articles.objects.filter(activated=1).order_by('-show')[:3]
    trending = Trending.objects.all().order_by('-pk')[:5]
    lastnews2 = Articles.objects.filter(activated=1).order_by('-pk')[:4]
    poparticles = Articles.objects.filter(activated=1).order_by('-show')[:3]

    paginator = Paginator(allnewss, 12)
    page = request.GET.get('page')

    try:
        allnews = paginator.page(page)
    except EmptyPage:
        allnews = paginator.page(paginator.num_pages)
    except PageNotAnInteger:
        allnews = paginator.page(1)

    return render(request, 'front/all_articles.html', {
        'site': site,
        'news': news,
        'cat': cat,
        'subcat': subcat,
        'lastnews': lastnews,
        'popnews': popnews,
        'popnews2': popnews2,
        'trending': trending,
        'lastnews2': lastnews2,
        'allnews': allnews,
        'poparticles': poparticles,

    })
