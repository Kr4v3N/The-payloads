from django.contrib.sitemaps import Sitemap
from articles.models import Articles


class MyArticlesSiteMap(Sitemap):

    priority = 1.0
    changefreq = 'daily'

    def items(self):
        return Articles.objects.all()

    def location(self, item):
        return "/articles/" + str(item)
