# Varnish for Drupal Docker Container Image

[![Build Status](https://travis-ci.org/wodby/drupal-varnish.svg?branch=master)](https://travis-ci.org/wodby/drupal-varnish)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Docker Layers](https://images.microbadger.com/badges/image/wodby/drupal-varnish.svg)](https://microbadger.com/images/wodby/drupal-varnish)

## Docker Images

!!! For better reliability we release images with stability tags (`wodby/drupal-varnish:4-X.X.X`) which correspond to [git tags](https://github.com/wodby/drupal-varnish/releases). We **STRONGLY RECOMMEND** using images only with stability tags. 

Overview:

* All images are based on Alpine Linux
* Base image: [wodby/varnish](https://github.com/wodby/varnish)
* [Travis CI builds](https://travis-ci.org/wodby/drupal-varnish) 
* [Docker Hub](https://hub.docker.com/r/wodby/drupal-varnish)

Supported tags and respective `Dockerfile` links:

* `4`, `4.1`, `latest` [_(Dockerfile)_](https://github.com/wodby/drupal-varnish/tree/master/4/Dockerfile)

## Environment Variables

See more at [wodby/varnish](https://github.com/wodby/varnish)

| Variable                                | Default Value | Description |
| --------------------------------------- | ------------- | ----------- |
| `VARNISH_ALLOW_UNRESTRICTED_BAN`        |               |             |
| `VARNISH_ALLOW_UNRESTRICTED_PURGE`      |               |             |
| `VARNISH_ERRORS_TTL`                    | `10m`         |             |
| `VARNISH_GRACE`                         | `6h`          |             |
| `VARNISH_BACKEND_FIRST_BYTE_TIMEOUT`    | `300s`        |             |
| `VARNISH_BACKEND_CONNECT_TIMEOUT`       | `5s`          |             |
| `VARNISH_BACKEND_BETWEEN_BYTES_TIMEOUT` | `2s`          |             |

`VARNISH_EXCLUDE_URLS` (backslashes must be escaped `\\`):

```
^(/update\\.php|/([a-z]{2}/)?admin|/([a-z]{2}/)?admin/.*|/([a-z]{2}/)?system/files/.*|/([a-z]{2}/)?flag/.*|.*/ajax/.*|.*/ahah/.*)$
```

`VARNISH_STATIC_FILES`:

```
pdf|asc|dat|txt|doc|xls|ppt|tgz|csv|png|gif|jpeg|jpg|ico|swf|css|js|svg
```

## Complete Drupal stack

See [Docker4Drupal](https://github.com/wodby/docker4drupal)
