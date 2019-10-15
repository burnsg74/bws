FROM alpine
RUN apk add --update \
zsh \
git

RUN sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

ENTRYPOINT /bin/zsh
