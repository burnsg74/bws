FROM alpine
RUN apk add --update \
git \
openssh \
npm

RUN addgroup -S bws && adduser -S bws -G bws

USER bws

RUN cd ~

ENTRYPOINT /bin/bash
