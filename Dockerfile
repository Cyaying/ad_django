FROM python:3.8

RUN pip install django==2.2.24 mysqlclient -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com && \
    mkdir /home/mob/AD_project/ad_django

COPY . /home/mob/AD_project/ad_django

EXPOSE 8000

CMD python /home/mob/AD_project/ad_django/manage.py runserver 0.0.0.0:8000