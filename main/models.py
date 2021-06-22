from __future__ import unicode_literals
from django.db import models


class Main(models.Model):

    name = models.CharField(max_length=50)
    about = models.TextField()
    linkedin = models.CharField(max_length=100, default="-")
    twitter = models.CharField(max_length=100, default="-")
    youtube = models.CharField(max_length=100, default="-")
    github = models.CharField(max_length=100, default="-")
    phone = models.CharField(max_length=100, default="-")
    link_footer = models.CharField(max_length=100, default="-")

    set_name = models.CharField(max_length=20, default="-")

    def __str__(self):
        return self.set_name + " | " + str(self.pk)

    class Meta:
        verbose_name = 'Principal'
        verbose_name_plural = 'Principal'
