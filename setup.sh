docker build -t ad_django:2.2.24 .
docker run -itd --name ad_django:2.2.24 -p 8000:8000 ad_django:2.2.24