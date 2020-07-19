#!/bin/sh -l

set -e
wget https://github.com/rectorphp/rector-prefixed/raw/$1/rector.phar -O rector \
    && chmod a+x rector \
    && mv rector /usr/local/bin/rector
/usr/local/bin/rector process $2
