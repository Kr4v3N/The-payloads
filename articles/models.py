from __future__ import unicode_literals

from django.db import models


class Articles(models.Model):
    name = models.CharField(max_length=150)
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
    tag = models.TextField(default="")
    activated = models.IntegerField(default=0)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Article'
        verbose_name_plural = 'Articles'
