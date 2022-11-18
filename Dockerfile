FROM nginx:1.23.2

COPY webdav.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /

RUN chmod +x entrypoint.sh

CMD /entrypoint.sh && nginx -g "daemon off;"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
                    apache2-utils && \
                    rm -rf /var/lib/apt/lists

VOLUME /media

EXPOSE 80
