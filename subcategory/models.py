from __future__ import unicode_literals

from django.db import models


# Create your models here.
from django.template.defaultfilters import slugify


class Subcategory(models.Model):
    name = models.CharField(max_length=80)
    catname = models.CharField(max_length=80)
    catid = models.IntegerField()
    slug = models.SlugField(max_length=255, unique=True, blank=True)


    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Sous catégorie'
        verbose_name_plural = 'Sous catégories'

    def save(self, *args, **kwargs):

        if not self.slug:
            self.slug = slugify(self.name)

        super().save(*args, **kwargs)
