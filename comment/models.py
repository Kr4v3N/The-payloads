from django.db import models
from django.utils import timezone


class Comment(models.Model):

    name = models.CharField(max_length=70)
    email = models.EmailField()
    content = models.TextField()
    article_id = models.IntegerField()
    date = models.CharField(max_length=12)
    time = models.CharField(max_length=10)
    status = models.IntegerField(default=0)
    created = models.DateTimeField(default=timezone.now)

    class Meta:
        verbose_name = 'Commentaire'
        verbose_name_plural = 'Commentaires'

    def __str__(self):
        return '{} - {}'.format(self.name, self.content[:20])
