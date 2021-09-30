from django.conf import settings
from django.core.exceptions import ValidationError
from django.core.mail import send_mail
from django.core.validators import validate_email
from django.shortcuts import render, redirect
from django.contrib import messages
import datetime
from django.db.models.functions import datetime
from .models import Newsletter


def articles_letter(request):

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
        email = request.POST.get('register-email')
    try:
        validate_email(request.POST.get("register-email"))
    except ValidationError:
        messages.error(request, 'Veuillez saisir une adresse mail valide !')
        return redirect('home')

    b = Newsletter(email=email,
                   status=1,
                   date=today,
                   time=time,
                   )
    b.save()
    messages.success(request, "Merci pour votre abonnement :)")
    return redirect('home')


def articles_emails(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    emails = Newsletter.objects.filter(status=1)

    return render(request, 'back/emails.html', {'emails': emails})


def articles_emails_delete(request, pk):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    b = Newsletter.objects.get(pk=pk)
    b.delete()

    messages.success(request, "Le courriel a été supprimé avec succès")
    return redirect('articles_emails')


def send_email(request):

    if request.method == 'POST':

        txt = request.POST.get('txt')
        sub = request.POST.get('subject')

        a = []
        for i in Newsletter.objects.all():
            a.append(Newsletter.objects.get(pk=i.pk).txt)
        # print(a)
        subject = sub
        message = txt
        email_from = settings.EMAIL_HOST_USER
        emails = a
        send_mail(subject, message, email_from, emails)

        messages.success(request, 'Vos messages ont été distribué avec succès')
        return redirect('contact_list')

    return redirect('articles_emails')
