FROM alpine:latest
MAINTAINER "sk1f3r"
LABEL description="Light example of Flask usage for a config creation"

RUN apk update && \
apk install python3 python3-flask \
python-software-properties build-essential &&
rm -rf /var/cache/apk/*

ENV dst-dir /opt/cfg-gen

RUN mkdir -p $(dst-dir)/static
RUN mkdir -p $(dst-dir)/templates

COPY config.py $(dst-dir)/config.py
COPY app.py $(dst-dir)/app.py
COPY static/* $(dst-dir)/static/
COPY templates/* $(dst-dir)/template/

RUN chmod a+x $(dst-dir)/app.py

EXPOSE 80/tcp

CMD ["python3", $(dst-dir), "/app.py"]