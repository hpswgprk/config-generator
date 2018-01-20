FROM python:3.6.4-alpine
MAINTAINER "sk1f3r"

RUN pip3 install flask

ENV DST "/opt/cfg-gen"

COPY config.py $DST/config.py
COPY app.py $DST/app.py
COPY static/* $DST/static/
COPY templates/* $DST/templates/

RUN chmod a+x $DST/app.py

EXPOSE 80/tcp

CMD "/opt/cfg-gen/app.py"
