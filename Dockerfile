FROM debian:11-slim

COPY build/hacdias-webdav /webdav
COPY build/config-prod.yaml /webdav.yaml

VOLUME /media

EXPOSE 5006

ENTRYPOINT [ "/webdav" ]
CMD ["-c", "/webdav.yaml"]
