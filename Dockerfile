FROM nginx:1.15-alpine AS nginx

RUN apk --update add dumb-init

COPY cache-nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 443

VOLUME ["/run/secrets"]

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["nginx", "-g", "daemon off;"]
