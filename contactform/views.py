from django.contrib.auth import authenticate
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError
from django.core.validators import validate_email
from django.db.models.functions import datetime
from django.shortcuts import render, redirect
from django.contrib import messages

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

        b = Contactform(name=name, email=email, msg=msg, date=today, time=time)
        b.save()

        messages.success(request, 'Votre message a été envoyée avec succès')
        return redirect('home')

    site = Main.objects.get(pk=4)
    articles = Articles.objects.all().order_by('-pk')
    cat = Category.objects.all()
    lastarticles = Articles.objects.order_by('-pk')[:3]
    lastarticles2 = Articles.objects.order_by('-pk')[:4]
    subcat = Subcategory.objects.all()
    poparticles = Articles.objects.order_by('-show')[:4]

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