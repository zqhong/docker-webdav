FROM nginx:1.23.2

ARG UID=${UID:-1000}
ARG GID=${GID:-1000}

VOLUME /media
EXPOSE 80

COPY webdav.conf /etc/nginx/conf.d/default.conf

COPY entrypoint.sh /
RUN chmod +x entrypoint.sh

CMD /entrypoint.sh && nginx -g "daemon off;"
