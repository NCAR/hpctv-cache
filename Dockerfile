FROM nginx:1.13.7-alpine AS nginx

LABEL repo=cisl-repo \
      name=hpctv-cache \
      version=1.0

EXPOSE 443

COPY cache-nginx.conf /etc/nginx/conf.d/default.conf

VOLUME /run/secrets
