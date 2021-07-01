from django.db import models


# Create your models here.

class Subcategory(models.Model):
    name = models.CharField(max_length=80)
    category_name = models.CharField(max_length=80)
    category_id = models.IntegerField()

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Sous catégorie'
        verbose_name_plural = 'Sous catégories'
