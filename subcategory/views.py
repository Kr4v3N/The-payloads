import csv
from django.contrib import messages
from django.http import HttpResponse
from django.shortcuts import render, redirect

from main.models import Main
from articles.models import Articles
from .models import Subcategory


def subcategory_list(request):

    subcat = Subcategory.objects.all()

    return render(request, 'back/subcategory_list.html', {'subcategory': subcat})


def subcategory_add(request):

    if request.method == 'POST':

        name = request.POST.get('name')

        if name == "":
            messages.warning(request, "Vous devez ajouter une sous catégorie")
            return redirect('subcategory_add')

        if len(Subcategory.objects.filter(name=name)) != 0:

            messages.warning(request, "Cette sous catégorie existe déjà")
            return redirect('subcategory_add')

    return render(request, 'back/subcategory_add.html')
