import json

from django.http import HttpResponse


def content_view(request):
    if request.method == 'GET':
        index = int(request.GET.get('type'))
        with open('AD_articles.json', encoding='utf-8') as f:
            content = json.load(f)
        content = json.dumps(content[index])
        print(content)
        print('******** ', index, ' ********')
        return HttpResponse(content, content_type='application/json')
    else:
        return HttpResponse('None !!!')
