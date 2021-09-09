FROM alpine:latest

RUN apk add bash curl docker-cli dumb-init git jq openssh-client

COPY *.sh /usr/local/bin/

ENTRYPOINT [ "/usr/bin/dumb-init" ]
CMD [ "/usr/local/bin/entrypoint.sh" ]
HEALTHCHECK --interval=5s --timeout=300s --start-period=3s --retries=10 CMD [ "/usr/local/bin/healtcheck.sh" ]
