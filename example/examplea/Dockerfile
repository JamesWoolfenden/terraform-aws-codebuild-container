# checkov:skip=CKV_DOCKER_2:demo code
# checkov:skip=CKV_DOCKER_3:demo code
# checkov:skip=CKV_DOCKER_7:demo code

FROM hashicorp/terraform

RUN apk update && \
    apk add --update \
    zip jq \
    nodejs-current nodejs-npm \
    python python-dev py-pip build-base

RUN pip install --upgrade pip
RUN pip install awscli

ENV PHANTOMJS_VERSION 2.1.1

RUN apk add --update --no-cache curl \
    && curl -Ls "https://github.com/dustinblackman/phantomized/releases/download/${PHANTOMJS_VERSION}/dockerized-phantomjs.tar.gz" | tar xz -C / \
    && curl -k -Ls https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 | tar -jxvf - -C / \
    && cp phantomjs-${PHANTOMJS_VERSION}-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs \
    && rm -fR phantomjs-${PHANTOMJS_VERSION}-linux-x86_64 \
    && apk del curl
