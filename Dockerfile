FROM python:alpine
MAINTAINER Damien DeZurik <dezurik@gmail.com>

ADD app.py app.py

CMD ["python3", "app.py"]
