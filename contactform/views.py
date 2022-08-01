import json
import urllib

from django.conf import settings
from django.contrib.auth import authenticate
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError
from django.core.validators import validate_email
from django.db.models.functions import datetime
from django.shortcuts import render, redirect
from django.contrib import messages
from ip2geotools.databases.noncommercial import DbIpCity
from ipware import get_client_ip

from articles.models import Articles
from .models import Contactform
from category.models import Category
from main.models import Main

from subcategory.models import Subcategory


def contact_add(request):

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

        if not result['success']:
            messages.error(request, "Captcha invalide, veuillez réessayer")
            return redirect('contact_add')

        name = request.POST.get('name')
        email = request.POST.get('email')
        msg = request.POST.get('msg')

        if name == "" or email == "" or msg == "":
            messages.error(request, 'Tous les champs sont requis')
            return redirect('contact_add')

        if len(name) <= 2:
            messages.error(request, 'Le nom doit comporter plus de 2 caractères')
            return redirect('contact_add')

        try:
            validate_email(request.POST.get("email"))
        except ValidationError:
            messages.error(request, 'Veuillez saisir une adresse mail valide !')
            return redirect('contact_add')

        ip, is_routable = get_client_ip(request)

        if ip is None:
            ip = "0.0.0.0"

        try:
            response = DbIpCity.get(ip, api_key='free')
            country = response.country + " | " + response.city

        except:
            country = " Inconnu"

        b = Contactform(name=name,
                        email=email,
                        msg=msg,
                        date=today,
                        time=time,
                        ip=ip,
                        country=country
                        )
        b.save()

        messages.success(request, 'Votre message a été envoyée avec succès')
        return redirect('contact_add')

    site = Main.objects.get(pk=4)
    articles = Articles.objects.all().order_by('-pk')
    cat = Category.objects.all()
    lastarticles = Articles.objects.order_by('-pk')[:3]
    lastarticles2 = Articles.objects.order_by('-pk')[:4]
    subcat = Subcategory.objects.all()
    poparticles = Articles.objects.order_by('-show')[:3]

    context = {
        'site': site,
        'articles': articles,
        'cat': cat,
        'lastarticles': lastarticles,
        'lastarticles2': lastarticles2,
        'subcat': subcat,
        'poparticles': poparticles,
    }

    return render(request, 'front/msgbox.html', context)


def contact_list(request):
    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    msg = Contactform.objects.all()

    return render(request, 'back/contact_form.html', {'msg': msg})


def contact_delete(request, pk):
    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    b = Contactform.objects.filter(pk=pk)
    b.delete()

    messages.success(request, 'Le message a été supprimé avec succès')
    return redirect('contact_list')

