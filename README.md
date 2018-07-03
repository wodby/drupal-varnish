# Varnish for Drupal Docker Container Image

[![Build Status](https://travis-ci.org/wodby/drupal-varnish.svg?branch=master)](https://travis-ci.org/wodby/drupal-varnish)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Docker Layers](https://images.microbadger.com/badges/image/wodby/drupal-varnish.svg)](https://microbadger.com/images/wodby/drupal-varnish)

## Docker Images

❗For better reliability we release images with stability tags (`wodby/drupal-varnish:4-X.X.X`) which correspond to [git tags](https://github.com/wodby/drupal-varnish/releases). We strongly recommend using images only with stability tags. 

Overview:

* All images are based on Alpine Linux
* Base image: [wodby/varnish](https://github.com/wodby/varnish)
* [Travis CI builds](https://travis-ci.org/wodby/drupal-varnish) 
* [Docker Hub](https://hub.docker.com/r/wodby/drupal-varnish)

Supported tags and respective `Dockerfile` links:

* `4.1`, `4`, `latest` [_(Dockerfile)_](https://github.com/wodby/drupal-varnish/tree/master/4/Dockerfile)

## Environment Variables

See more at [wodby/varnish](https://github.com/wodby/varnish)

| Variable                                | Default Value | Description       |
| --------------------------------------- | ------------- | ----------------- |
| `VARNISH_ALLOW_UNRESTRICTED_BAN`        |               |                   |
| `VARNISH_ALLOW_UNRESTRICTED_PURGE`      |               |                   |
| `VARNISH_BACKEND_BETWEEN_BYTES_TIMEOUT` | `2s`          |                   |
| `VARNISH_BACKEND_CONNECT_TIMEOUT`       | `5s`          |                   |
| `VARNISH_BACKEND_FIRST_BYTE_TIMEOUT`    | `300s`        |                   |
| `VARNISH_CACHE_STATIC_FILES`            |               |                   |
| `VARNISH_ERRORS_TTL`                    | `10m`         |                   |
| `VARNISH_GRACE`                         | `6h`          |                   |
| `VARNISH_SECONDARY_STORAGE_CONDITION`   |               | Must be valid vcl |

#### `VARNISH_EXCLUDE_URLS`

Backslashes must be escaped `\\`

```
^(/update\\.php|/([a-z]{2}/)?admin|/([a-z]{2}/)?admin/.*|/([a-z]{2}/)?system/files/.*|/([a-z]{2}/)?flag/.*|.*/ajax/.*|.*/ahah/.*)$
```

#### `VARNISH_STATIC_FILES`

```
pdf|asc|dat|txt|doc|xls|ppt|tgz|csv|png|gif|jpeg|jpg|ico|swf|css|js|svg
```

#### `VARNISH_PRESERVED_COOKIES`

```
SESS[a-z0-9]+|SSESS[a-z0-9]+|NO_CACHE
```

#### `VARNISH_SECONDARY_STORAGE_CONDITION`

Allows defining custom conditions for storing the cache object in the secondary 
storage; as it is injected into an `if` it has to contain valid VCL syntax for it.

Please note that `VARNISHD_SECONDARY_STORAGE` _(from the [base image](https://github.com/wodby/varnish))_
 must be defined as well, otherwise the secondary storage would not be available.

**Example:** instruct varnish to store in the secondary storage from the backend
via custom header `X-Cache-Bin`:

`VARNISH_STORAGE_CONDITION='beresp.http.x-cache-bin = "secondary"'`

## Orchestration actions

See [wodby/varnish](https://github.com/wodby/varnish) for all actions.

## Complete Drupal stack

See [Docker4Drupal](https://github.com/wodby/docker4drupal)
