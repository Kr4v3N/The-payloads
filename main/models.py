from __future__ import unicode_literals
from django.db import models


class Main(models.Model):
    name = models.CharField(max_length=50)
    about = models.TextField()
    about_page = models.TextField(default="")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Principal'
        verbose_name_plural = 'Principal'
