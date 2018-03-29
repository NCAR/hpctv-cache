FROM nginx:1.13.7-alpine AS nginx

COPY cache-nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 443

VOLUME ["/run/secrets"]
