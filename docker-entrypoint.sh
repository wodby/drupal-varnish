#!/bin/sh

set -eo pipefail

if [ -z "$VARNISH_BACKEND_HOST" ]; then
    VARNISH_BACKEND_HOST=nginx
fi
sed -i 's/BACKEND_HOST/'"${VARNISH_BACKEND_HOST}"'/' /etc/varnish/default.vcl

if [ -z "$VARNISH_BACKEND_PORT" ]; then
    VARNISH_BACKEND_PORT=80
fi
sed -i 's/BACKEND_PORT/'"${VARNISH_BACKEND_PORT}"'/' /etc/varnish/default.vcl

if [ -z "$VARNISH_SECRET" ]; then
    VARNISH_SECRET=secret
fi
echo $VARNISH_SECRET > /etc/varnish/secret

# Disk cache storage.
if [ -z "$VARNISH_MEMORY_SIZE" ]; then
    VARNISH_MEMORY_SIZE=256M
fi

# Disk cache storage.
if [ -z "$VARNISH_STORAGE_SIZE" ]; then
    VARNISH_STORAGE_SIZE=1024M
fi

exec varnishd \
        -F \
        -a :6081 \
        -T :6082 \
        -f /etc/varnish/default.vcl \
        -S /etc/varnish/secret \
        -s main=malloc,${VARNISH_MEMORY_SIZE} \
        -s secondary=file,/tmp,${VARNISH_STORAGE_SIZE} \
        -t 120 \
        -p thread_pools=1 \
        -p thread_pool_add_delay=2 \
        -p thread_pool_min=100 \
        -p thread_pool_max=1000
