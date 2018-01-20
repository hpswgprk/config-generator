FROM alpine:latest
MAINTAINER "sk1f3r"
LABEL description="Light example of Flask usage for a config creation"

RUN apk update && \
apk add python3 && pip3 install flask && \
rm -rf /var/cache/apk/*

ENV DST "/opt/cfg-gen"

RUN mkdir -p $DST/static
RUN mkdir -p $DST/templates

COPY config.py $DST/config.py
COPY app.py $DST/app.py
COPY static/* $DST/static/
COPY templates/* $DST/template/

RUN chmod a+x $DST/app.py

EXPOSE 80/tcp

CMD ["python3", $DST, "/app.py"]
