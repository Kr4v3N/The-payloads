import json
import urllib

from django.conf import settings
from django.contrib import messages
from django.core.exceptions import ValidationError
from django.core.validators import validate_email
from django.db.models.functions import datetime
from django.shortcuts import render, redirect

from articles.models import Articles
from comment.models import Comment
from manager.models import Manager


def comments_add(request, pk):

    if request.method == 'POST':

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
        # print(result)
        newsname2 = Articles.objects.get(pk=pk).name

        if not result['success']:
            messages.error(request, "Captcha invalide, veuillez réessayer")
            return redirect('article_detail', word=newsname2)

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

        content = request.POST.get('msg')

        if request.user.is_authenticated:

            manager = Manager.objects.get()

            b = Comment(name=manager.name,
                        email=manager.email,
                        content=content,
                        article_id=pk,
                        date=today,
                        time=time
                        )
            b.save()
        else:

            newsname1 = Articles.objects.get(pk=pk).name

            name = request.POST.get('name')
            email = request.POST.get('email')

            if name == "":
                messages.error(
                    request, "Vous devez saisir un nom d'utilisateur")
                return redirect('article_detail', word=newsname1)

            if len(name) < 3:
                messages.error(
                    request, "Le nom doit comporter au moins 3 caractères")
                return redirect('article_detail', word=newsname1)

            if email == "":
                messages.error(request, "Vous devez saisir une adresse mail")
                return redirect('article_detail', word=newsname1)

            try:
                validate_email(request.POST.get("email"))
            except ValidationError:
                messages.error(request, 'Entrez une adresse mail valide')
                return redirect('article_detail', word=newsname1)

            if content == "":
                messages.error(request, "Vous devez saisir un commentaire")
                return redirect('article_detail', word=newsname1)

            if len(content) < 10:
                messages.error(
                    request, "Le commentaire doit comporter au moins 10 caractères")
                return redirect('article_detail', word=newsname1)

            b = Comment(name=name,
                        email=email,
                        content=content,
                        article_id=pk,
                        date=today,
                        time=time
                        )
            b.save()

    newsname = Articles.objects.get(pk=pk).name

    messages.success(request, "Votre commentaire a été soumis avec succès")
    return redirect('article_detail', word=newsname)


def comments_list(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    comments = Comment.objects.all()
    article = Articles.objects.all()

    return render(request, 'back/comments_list.html', {'comments': comments, 'article': article})


def comments_delete(request, pk):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    comment = Comment.objects.filter(pk=pk)
    comment.delete()

    messages.success(request, 'Le commentaire a été supprimé avec succès')
    return redirect('comments_list')


def comments_confirm(request, pk):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    comment = Comment.objects.get(pk=pk)
    comment.status = 1
    comment.save()

    return redirect('comments_list')
