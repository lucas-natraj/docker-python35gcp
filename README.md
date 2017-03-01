# docker-python35gcp
docker base image - python35, google-cloud libraries + assortment of useful python libs

# sample dockerfile
```dockerfile
FROM nullreference/python35gcp

ADD requirements.txt /app/
RUN pip install -r requirements.txt
ADD . /app/
CMD gunicorn -b :$PORT main:app
```