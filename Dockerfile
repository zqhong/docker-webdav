FROM debian:11-slim

COPY build/hacdias-webdav /webdav
COPY build/config-prod.yaml /webdav.yaml

VOLUME /media

EXPOSE 80

ENTRYPOINT [ "/webdav" ]
CMD ["-c", "/webdav.yaml"]
