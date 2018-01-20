FROM python:3.6.4-alpine
MAINTAINER "sk1f3r"

RUN pip3 install flask

ENV DST "/opt/cfgen"

ADD * $DST/

RUN chmod a+x $DST/app.py

EXPOSE 80/tcp

CMD "/opt/cfgen/app.py"
