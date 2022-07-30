from __future__ import unicode_literals

from django.db import models
from django.template.defaultfilters import slugify
from taggit.managers import TaggableManager


class Articles(models.Model):
    name = models.CharField(max_length=150, verbose_name='Titre')
    slug = models.SlugField(max_length=255, unique=True, blank=True)
    short_txt = models.TextField()
    body_txt = models.TextField()
    date = models.CharField(max_length=12)
    time = models.CharField(max_length=12, default="00:00")
    pic_name = models.TextField()
    pic_url = models.TextField(default="-")
    writer = models.CharField(max_length=50)
    catname = models.CharField(max_length=50, default="-")
    catid = models.IntegerField(default=0)
    ocatid = models.IntegerField(default=0)
    show = models.IntegerField(default=0)
    tag = TaggableManager()
    activated = models.IntegerField(default=0)

    class Meta:
        ordering = ['-date']
        verbose_name = 'Article'
        verbose_name_plural = 'Articles'

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):

        if not self.slug:
            self.slug = slugify(self.name)

        super().save(*args, **kwargs)
