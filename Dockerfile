FROM python:3.5-alpine

RUN set -ex \
    && apk add --no-cache --update \
    gcc \
    make \
    libc-dev \
    musl-dev \
    linux-headers \
    pcre-dev \
    zlib-dev \
    libffi-dev \
    jpeg-dev \
    postgresql-dev \
    python3-dev \
    libmagic \
    cairo \
    pango \
    glib \
    git \
    nginx \
    supervisor \
  && rm -rf /var/cache/apk/* && \
  chown -R nginx:www-data /var/lib/nginx

RUN pip install uwsgi