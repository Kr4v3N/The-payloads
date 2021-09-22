from django.contrib import messages
from django.shortcuts import render, redirect

from articles.models import Articles
from main.models import Main
from subcategory.models import Subcategory
from trending.models import Trending
from .models import Category


def category_show(request, word):
    site = Main.objects.get(pk=4)
    articles = Articles.objects.filter(activated=1).order_by('-pk')
    categories = Category.objects.filter(name=word)
    category1 = Category.objects.all()
    category = Category.objects.all()
    cat = Category.objects.all()
    lastarticles = Articles.objects.filter(activated=1).order_by('-pk')[:3]
    lastarticles2 = Articles.objects.filter(activated=1).order_by('-pk')[:4]
    subcat = Subcategory.objects.all()
    poparticles = Articles.objects.filter(activated=1).order_by('-show')[:4]
    trending = Trending.objects.all().order_by('-pk')

    context = {
        'site': site,
        'articles': articles,
        'categories': categories,
        'lastarticles': lastarticles,
        'lastarticles2': lastarticles2,
        'subcat': subcat,
        'category1': category1,
        'category': category,
        'poparticles': poparticles,
        'trending': trending,
        'cat': cat,
    }

    return render(request, 'front/category_show.html', context)


def category_list(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    cat = Category.objects.all()

    return render(request, 'back/category_list.html', {'category': cat})


def category_add(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    if request.method == 'POST':
        name = request.POST.get('name')

        if name == "":
            messages.warning(request, "Vous devez ajouter une catégorie")
            return redirect('category_add')

        if len(Category.objects.filter(name=name)) != 0:

            messages.warning(request, "Cette catégorie existe déjà")
            return redirect('category_add')

        else:

            b = Category(name=name)
            b.save()
            messages.success(request, "La catégorie a bien été ajoutée")
            return redirect('category_list')

    return render(request, 'back/category_add.html')


def category_delete(request, pk):

    b = Category.objects.filter(pk=pk)
    b.delete()

    messages.success(request, "La catégorie a été supprimée avec succès ")
    return redirect('category_list')
