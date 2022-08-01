from __future__ import unicode_literals

from django.db import models


class Main(models.Model):

    name = models.CharField(max_length=50)
    about = models.TextField()
    about_page = models.TextField(default="")
    linkedin = models.CharField(max_length=100, default="-")
    twitter = models.CharField(max_length=100, default="-")
    youtube = models.CharField(max_length=100, default="-")
    github = models.CharField(max_length=100, default="-")
    phone = models.CharField(max_length=100, default="-")
    link_footer = models.CharField(max_length=100, default="-")

    seo_txt = models.CharField(max_length=200, default="-")
    seo_keywords = models.TextField(default="-")

    set_name = models.CharField(max_length=20, default="-")

    pic_url = models.TextField(default="")
    pic_name = models.TextField(default="")

    pic_url_footer = models.TextField(default="")
    pic_name_footer = models.TextField(default="")

    def __str__(self):
        return self.set_name + " | " + str(self.pk)

    class Meta:
        verbose_name = 'Principal'
        verbose_name_plural = 'Principal'
