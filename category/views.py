import csv
from django.contrib import messages
from django.shortcuts import render, redirect

import category
from .models import Category


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
