from django.contrib.auth import authenticate, login, logout
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
    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    return render(request, 'back/home.html')


def my_login(request):
    if request.method == 'POST':
        user_txt = request.POST.get('username')
        pass_txt = request.POST.get('password')

        if user_txt != "" and pass_txt != "":
            user = authenticate(username=user_txt, password=pass_txt)

            if user is not None:
                login(request, user)
                return redirect('panel')

    return render(request, 'front/login.html')

