FROM alpine
RUN apk add --update \
git \
ssh \
npm

RUN hostname bws

RUN addgroup -S bws && adduser -S bws -G bws

USER bws

RUN cd ~

ENTRYPOINT /bin/zsh
