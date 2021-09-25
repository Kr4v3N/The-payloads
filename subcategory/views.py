from django.contrib import messages
from django.shortcuts import render, redirect
from .models import Subcategory
from category.models import Category


def subcat_list(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    subcat = Subcategory.objects.all()

    return render(request, 'back/subcategory_list.html', {'subcat': subcat})


def subcat_add(request):

    # Login check start
    if not request.user.is_authenticated:
        return redirect('login')
    # Login check end

    cat = Category.objects.all()

    if request.method == 'POST':
        name = request.POST.get('name')
        catid = request.POST.get('cat')
        if name == "":
            messages.warning(request, "Vous devez ajouter une sous-catégorie")
            return redirect('subcat_add')
        if len(Subcategory.objects.filter(name=name)) != 0:
            messages.warning(request, "Cette sous-catégorie existe déjà")
            return redirect('subcat_add')
        catname = Category.objects.get(pk=catid).name
        b = Subcategory(name=name, catname=catname, catid=catid)
        b.save()
        messages.success(request, "La sous catégorie a bien été ajoutée")
        return redirect('subcat_list')

    return render(request, 'back/subcategory_add.html', {'cat': cat})


def subcat_delete(request, pk):

    b = Subcategory.objects.filter(pk=pk)
    b.delete()

    messages.success(request, "La sous-catégorie a été supprimée avec succès ")
    return redirect('subcat_list')