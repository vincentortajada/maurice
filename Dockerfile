FROM python:3.5.1

RUN apt-get update -y
RUN mkdir -p /usr/src/app

COPY app/requirements.txt /usr/src/app/requirements.txt
WORKDIR /usr/src/app
RUN pip3 install -r requirements.txt

COPY app/ /usr/src/app/


RUN mkdir -p /usr/src/conf

ENTRYPOINT ["python3"]
CMD ["main.py"]