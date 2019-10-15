FROM alpine
RUN apk add --update \
git \
npm

RUN addgroup -S bws && adduser -S bws -G bws

RUN sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

USER bws

ENTRYPOINT /bin/zsh
