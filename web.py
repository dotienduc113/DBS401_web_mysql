from django.http import HttpResponse
from django.template import loader


def test(request):
    mymembers = Member.objects.all().values()
    template = loader.get_template('template.html')
    context = {
        'mymembers' : mymembers
    }
    return HttpRespond(template.render(context,request))
