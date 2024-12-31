FROM alpine:3.14
RUN apk add --no-cache bash curl wget
COPY modfetch/modfetch.sh /
VOLUME /mnt/mods
WORKDIR /mnt/mods
ENTRYPOINT ["/bin/bash", "/modfetch.sh"]