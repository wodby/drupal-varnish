# Varnish for Drupal Docker Container Image

[![Build Status](https://travis-ci.org/wodby/drupal-varnish.svg?branch=master)](https://travis-ci.org/wodby/drupal-varnish)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Wodby Slack](http://slack.wodby.com/badge.svg)](http://slack.wodby.com)

## Docker Images

* All images are based on Alpine Linux
* Base image: [wodby/varnish](https://github.com/wodby/varnish)
* [Travis CI builds](https://travis-ci.org/wodby/drupal-varnish) 
* [Docker Hub](https://hub.docker.com/r/wodby/drupal-varnish)

For better reliability we release images with stability tags (`wodby/drupal-varnish:4.1-X.X.X`) which correspond to git tags. We **strongly recommend** using images only with stability tags. Below listed basic tags:
## Versions

| Image tag (Dockerfile)                                                           | Drupal | Varnish |
| -------------------------------------------------------------------------------- | ------ | ------- |
| [4.1 (latest)](https://github.com/wodby/drupal-varnish/tree/master/4/Dockerfile) | *      | 4.1.3   |

## Environment Variables

See more at [wodby/varnish](https://github.com/wodby/varnish)

| Variable                              | Default Value | Description |
| ------------------------------------- | ------------- | ----------- |
| VARNISH_ALLOW_UNRESTRICTED_BAN        |               |             |
| VARNISH_ALLOW_UNRESTRICTED_PURGE      |               |             |
| VARNISH_ERRORS_TTL                    | 10m           |             |
| VARNISH_GRACE                         | 6h            |             |
| VARNISH_BACKEND_FIRST_BYTE_TIMEOUT    | 300s          |             |
| VARNISH_BACKEND_CONNECT_TIMEOUT       | 5s            |             |
| VARNISH_BACKEND_BETWEEN_BYTES_TIMEOUT | 2s            |             |

## Complete Drupal stack

See [Docker4Drupal](https://github.com/wodby/docker4drupal)
