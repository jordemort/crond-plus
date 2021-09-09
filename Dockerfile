FROM alpine:latest

RUN apk add bash curl docker-cli dumb-init git jq openssh-client

ENTRYPOINT [ "/usr/bin/dumb-init" ]
CMD [ "/usr/sbin/crond", "-f", "-d", "8" ]
