#!/bin/bash
if [ -x "$(command -v $1)" ]; then
    exec "$@"
else
    /usr/local/bin/drupal $@
fi
