from django.db import models


class Manager(models.Model):
    name = models.CharField(max_length=50)
    user_txt = models.TextField()
    email = models.EmailField(default="")
    ip = models.CharField(max_length=120)
    country = models.CharField(max_length=200, default="")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Direction'
        verbose_name_plural = 'Directions'
