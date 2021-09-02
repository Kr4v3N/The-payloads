from django.contrib import messages
from django.shortcuts import render, redirect
from .models import Subcategory
from category.models import Category


def subcategory_list(request):

    subcat = Subcategory.objects.all()

    return render(request, 'back/subcategory_list.html', {'subcat': subcat})


def subcategory_add(request):

    cat = Category.objects.all()

    if request.method == 'POST':

        name = request.POST.get('name')
        catid = request.POST.get('cat')

        if name == "":
            messages.warning(request, "Vous devez ajouter une sous-catégorie")
            return redirect('subcategory_add')

        if len(Subcategory.objects.filter(name=name)) != 0:
            messages.warning(request, "Cette sous-catégorie existe déjà")
            return redirect('subcategory_add')

        catname = Category.objects.get(pk=catid).name
        b = Subcategory(name=name, catname=catname, catid=catid)
        b.save()

        messages.success(request, "La sous catégorie a bien été ajoutée")
        return redirect('subcategory_list')

    return render(request, 'back/subcategory_add.html', {'cat': cat})