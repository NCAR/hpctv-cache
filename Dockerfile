FROM nginx:1.13.7-alpine AS nginx

LABEL repo=cisl-repo \
      name=hpctv-cache \
      version=1.0

EXPOSE 443

VOLUME ["/etc/nginx/conf.d", "/run/secrets"]
