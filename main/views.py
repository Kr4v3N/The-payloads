from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.core.files.storage import FileSystemStorage
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
        return redirect('my_login')
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


def my_logout(request):

    logout(request)

    return redirect('my_login')


def site_setting(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    if request.method == 'POST':
        name = request.POST.get('name')
        phone = request.POST.get('phone')
        facebook = request.POST.get('facebook')
        linkedin = request.POST.get('linkedin')
        twitter = request.POST.get('twitter')
        youtube = request.POST.get('youtube')
        link = request.POST.get('link')
        about = request.POST.get('about')

        if facebook == "": facebook == "#"
        if twitter == "": twitter == "#"
        if linkedin == "": linkedin == "#"
        if youtube == "": youtube == "#"
        if link == "": link == "#"

        if name == "" or phone == "" or about == "":
            messages.error(request, "Tous les champs doivent être renseignés")
            return redirect('site_setting')
        try:
            myfile = request.FILES['myfile']
            fs = FileSystemStorage()
            filename = fs.save(myfile.name, myfile)
            url = fs.url(filename)

            pic_url = url
            pic_name = filename


        except:
            pic_url = "-"
            pic_name = "-"

        try:
            myfile2 = request.FILES['myfile2']
            fs2 = FileSystemStorage()
            filename2 = fs2.save(myfile2.name, myfile2)
            url2 = fs2.url(filename2)

            pic_url_footer = url2
            pic_name_footer = filename2

        except:
            pic_url_footer = "-"
            pic_name_footer = "-"

        b = Main.objects.get(pk=4)

        b.name = name
        b.phone = phone
        b.facebook = facebook
        b.twitter = twitter
        b.linkedin = linkedin
        b.youtube = youtube
        b.link = link
        if pic_url != "-": b.pic_url = pic_url
        if pic_name != "-": b.pic_name = pic_name
        if pic_url_footer != "-": b.pic_url_footer = pic_url_footer
        if pic_name_footer != "-": b.pic_name_footer = pic_name_footer

        b.save()
        messages.success(request, "Votre ou vos paramètres ont été modifiés avec succès")
        return redirect('site_setting')

    site = Main.objects.get(pk=4)

    return render(request, 'back/setting.html', {'site': site})
