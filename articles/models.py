from django.db import models


class Articles(models.Model):
    name = models.CharField(max_length=200)
    short_txt = models.TextField()
    body_txt = models.TextField()
    date = models.CharField(max_length=24)
    time = models.CharField(max_length=24, default="00:00")
    pic_name = models.TextField(default="-")
    pic_url = models.TextField(default="-")
    writer = models.CharField(max_length=50)
    category_name = models.CharField(max_length=50, default="-")
    category_id = models.IntegerField(default=0)
    show = models.IntegerField(default=0)
    comments = models.IntegerField(default=0)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Article'
        verbose_name_plural = 'Articles'
