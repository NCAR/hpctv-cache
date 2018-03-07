FROM nginx:1.13.7-alpine AS nginx

EXPOSE 443

VOLUME ["/etc/nginx/conf.d", "/run/secrets"]
