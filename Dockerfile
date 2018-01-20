FROM python:3.6.4-alpine
MAINTAINER "sk1f3r"

RUN pip3 install flask

ENV DST "/opt/cfg-gen"

ADD config.py $DST/
ADD app.py $DST/
ADD static $DST/
ADD templates $DST/

RUN chmod a+x $DST/app.py

EXPOSE 80/tcp

CMD "/opt/cfg-gen/app.py"
