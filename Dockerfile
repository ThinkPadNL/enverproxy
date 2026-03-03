FROM python:alpine

RUN apk --no-cache add git && pip3 install paho-mqtt

RUN git clone https://github.com/ThinkPadNL/enverproxy.git /data/app

WORKDIR /data/app

EXPOSE 1898

CMD ["python3", "./enverproxy.py"]
