import json
import urllib.parse
import urllib

from django.conf import settings
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib.sites import requests
from django.core.files.storage import FileSystemStorage
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.shortcuts import render, redirect
from taggit.models import Tag

from category.models import Category
from contactform.models import Contactform
from newsletter.models import Newsletter
from .models import Main
from articles.models import Articles
from subcategory.models import Subcategory
from trending.models import Trending
from random import randint
from comment.models import Comment
from ipware import get_client_ip
from django.core.mail import send_mail
from django.conf import settings


def home(request):

    site = Main.objects.get(pk=4)
    articles = Articles.objects.filter(activated=1).order_by('-pk')
    cat = Category.objects.all()
    lastarticles = Articles.objects.filter(activated=1).order_by('-pk')[:3]
    lastarticles2 = Articles.objects.filter(activated=1).order_by('-pk')[:4]
    subcat = Subcategory.objects.all()
    poparticles = Articles.objects.filter(activated=1).order_by('-show')[:3]
    trending = Trending.objects.all().order_by('-pk')
    tags = Tag.objects.all()[:10]

    random_object = Trending.objects.all()[randint(0, len(trending) - 1)]
    print(random_object)

    paginator = Paginator(articles, 5)
    page = request.GET.get('page')

    try:
        articles = paginator.page(page)
    except EmptyPage:
        articles = paginator.page(paginator.num_pages)
    except PageNotAnInteger:
        articles = paginator.page(1)

    return render(request, 'front/home.html', {
        'site': site,
        'articles': articles,
        'cat': cat,
        'lastarticles': lastarticles,
        'lastarticles2': lastarticles2,
        'subcat': subcat,
        'poparticles': poparticles,
        'trending': trending,
        'tags': tags,
    })


def about(request):

    site = Main.objects.get(pk=4)
    cat = Category.objects.all()
    articles = Articles.objects.filter(activated=1).order_by('-pk')
    lastarticles = Articles.objects.filter(activated=1).order_by('-pk')[:3]
    lastarticles2 = Articles.objects.filter(activated=1).order_by('-pk')[:4]
    subcat = Subcategory.objects.all()
    poparticles = Articles.objects.filter(activated=1).order_by('-show')[:3]
    trending = Trending.objects.all().order_by('-pk')

    return render(request, 'front/about.html', {
        'site': site,
        'articles': articles,
        'cat': cat,
        'lastarticles': lastarticles,
        'lastarticles2': lastarticles2,
        'subcat': subcat,
        'poparticles': poparticles,
        'trending': trending,
    })


def panel(request):
    # Login check start
    if not request.user.is_authenticated:
        return redirect('my_login')
    # Login check end

    articles = Articles.objects.all()
    articles_count = len(articles)

    comments = Comment.objects.all()
    comments_count = len(comments)

    emails = Newsletter.objects.all()
    emails_count = len(emails)

    contacts = Contactform.objects.all()
    contacts_count = len(contacts)

    return render(request, 'back/home.html', {
        'comments_count': comments_count,
        'articles_count': articles_count,
        'emails_count': emails_count,
        'contacts_count': contacts_count
    })


def my_login(request):

    if request.method == 'POST':
        user_txt = request.POST.get('username')
        pass_txt = request.POST.get('password')

        captcha_token = request.POST.get("g-recaptcha-response")
        captcha_url = "https://www.google.com/recaptcha/api/siteverify"
        values = {
            'secret': settings.RECAPTCHA_PRIVATE_KEY,
            'response': captcha_token
        }
        captcha_data = urllib.parse.urlencode(values).encode()
        req = urllib.request.Request(captcha_url, data=captcha_data)
        captcha_server_response = urllib.request.urlopen(req)
        result = json.loads(captcha_server_response.read().decode())

        if not result['success']:
            messages.error(request, "Captcha invalide, veuillez r??essayer")
            return redirect('my_login')

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
        seo_txt = request.POST.get('seotxt')
        seo_keywords = request.POST.get('seokeyword')

        if facebook == "": facebook == "#"
        if twitter == "": twitter == "#"
        if linkedin == "": linkedin == "#"
        if youtube == "": youtube == "#"
        if link == "": link == "#"

        if name == "" or phone == "" or about == "":
            messages.error(request, "Tous les champs doivent ??tre renseign??s")
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
        b.about = about

        b.seo_txt = seo_txt
        b.seo_keywords = seo_keywords


        if pic_url != "-": b.pic_url = pic_url
        if pic_name != "-": b.pic_name = pic_name
        if pic_url_footer != "-": b.pic_url_footer = pic_url_footer
        if pic_name_footer != "-": b.pic_name_footer = pic_name_footer

        b.save()

        messages.success(request, "Votre ou vos param??tres ont ??t?? modifi??s avec succ??s")
        return redirect('site_setting')

    site = Main.objects.get(pk=4)

    return render(request, 'back/setting.html', {'site': site})


def about_setting(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    if request.method == 'POST':
        txt = request.POST.get('txt')
        if txt == "":
            messages.error(request, "Tous les champs doivent ??tre renseign??s")
            return redirect('about_setting')

        b = Main.objects.get(pk=4)
        b.about_page = txt
        b.save()

        messages.success(request, "Votre page ?? bien ??t?? modifi??")
        return redirect('about_setting')

    about_page = Main.objects.get(pk=4).about_page

    context = {
        'about_page': about_page
    }

    return render(request, 'back/about_setting.html', context)


def contact(request):

    site = Main.objects.get(pk=4)
    cat = Category.objects.all()
    articles = Articles.objects.filter(activated=1).order_by('-pk')
    lastarticles = Articles.objects.filter(activated=1).order_by('-pk')[:3]
    lastarticles2 = Articles.objects.filter(activated=1).order_by('-pk')[:4]
    subcat = Subcategory.objects.all()
    poparticles = Articles.objects.filter(activated=1).order_by('-show')[:3]
    trending = Trending.objects.all().order_by('-pk')

    return render(request, 'front/contact.html', {
        'site': site,
        'articles': articles,
        'cat': cat,
        'lastarticles': lastarticles,
        'lastarticles2': lastarticles2,
        'subcat': subcat,
        'poparticles': poparticles,
        'trending': trending,
    })


def change_pass(request):
    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    if request.method == 'POST':
        old_pass = request.POST.get('old_pass')
        new_pass = request.POST.get('new_pass')
        new_pass_confirm = request.POST.get('new_pass_confirm')

        if old_pass == "" or new_pass == "" or new_pass_confirm == "":
            messages.error(request, 'Tous les champs sont requis')
            return redirect('change_pass')

        user = authenticate(username=request.user, password=old_pass)

        if user is not None:

            if new_pass != new_pass_confirm:
                messages.error(request,
                               "Le champ nouveau mot de passe doit ??tre identique au champ confirmer nouveau mot de "
                               "passe")
                return redirect('change_pass')

            if len(new_pass) < 8:
                messages.error(
                    request, "Votre mot de passe doit comporter plus de 8 caract??res")
                return redirect('change_pass')

            count1 = 0
            count2 = 0
            count3 = 0

            for i in new_pass:
                if '0' < i < '9':
                    count1 += 1
                if 'A' < i < 'Z':
                    count2 += 1
                if 'a' < i < 'z':
                    count3 += 1
            # print(count1, count2, count3)

            if count1 >= 1 and count2 >= 1 and count3 >= 1:
                user = User.objects.get(username=request.user)
                user.set_password(new_pass)
                user.save()

                messages.success(request, 'Votre mot de passe a ??t?? modifi?? avec succ??s')
                return redirect('panel')

            else:
                messages.error(request, "Votre mot de passe doit comporter au moins 8 caract??res avec des chiffres, "
                                        "des lettres minuscules et majuscules")
                return redirect('my_logout')

        else:
            messages.error(
                request, "Votre ancien mot de passe n'est pas valide")
            return redirect('change_pass')

    return render(request, 'back/change_pass.html')


def answer_cmt(request, pk):

    if request.method == 'POST':

        txt = request.POST.get('txt')
        sub = request.POST.get('subject')

        if txt == "":
            messages.error(request, 'R??diger votre r??ponse !')
        else:
            to_email = Contactform.objects.get(pk=pk).email

            # Send email with settting #
            subject = sub
            message = txt
            email_from = settings.EMAIL_HOST_USER
            emails = [to_email]
            send_mail(subject, message, email_from, emails)

            # Send email without settting #

            # send_mail(
            #     'sender number 2',
            #     txt,
            #     'sender@thepayloads.com',
            #     [to_email],
            #     fail_silently=False,
            # )

            messages.success(request, 'Votre message a ??t?? transmis avec succ??s')
            return redirect('contact_list')

    return render(request, 'back/answer_cmt.html', {'pk': pk})
