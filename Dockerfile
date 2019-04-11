#Docker file for a slim Ubuntu-based Python3 image

FROM ubuntu:latest
MAINTAINER Sean Xie "sxie2004@gmail.com"

RUN apt-get update \
&& apt-get install -y supervisor python3 python3-pip python3-dev \
&& cd /usr/local/bin \
&& ln -s /usr/bin/python3 python \
&& pip3 install --upgrade pip uwsgi
ADD . /app
WORKDIR /app

# Setting up supervisord and entrypoint
ADD configs/etc/supervisor/conf.d/*.conf /etc/supervisor/conf.d/
ADD configs/docker/web_test/entrypoint.sh /app

ENTRYPOINT ["./entrypoint.sh"]
CMD ["web_test"]

