# This is test task #1
FROM ubuntu:bionic
MAINTAINER Oldman44 'oldman.44@yandex.ru'
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential git
RUN git clone https://github.com/anfederico/Flaskex
WORKDIR /Flaskex
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
