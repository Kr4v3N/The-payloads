from django.db import models


# Create your models here.

class Trending(models.Model):
    txt = models.CharField(max_length=200)
    link = models.CharField(max_length=300, blank=True, null=True)

    def __str__(self):
        return self.txt

    class Meta:
        verbose_name = 'Tendance'
        verbose_name_plural = 'Tendances'
