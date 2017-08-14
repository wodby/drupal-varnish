# Varnish for Drupal Docker Container Image

[![Build Status](https://travis-ci.org/wodby/drupal-varnish.svg?branch=master)](https://travis-ci.org/wodby/drupal-varnish)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Wodby Slack](http://slack.wodby.com/badge.svg)](http://slack.wodby.com)

## Docker Images

Images are based on [wodby/varnish](https://travis-ci.org/wodby/varnish), built via [Travis CI](https://travis-ci.org/wodby/drupal-varnish) and published on [Docker Hub](https://hub.docker.com/r/wodby/drupal-varnish). 

## Versions

| Varnish                                                                   | Alpine Linux |
| ------------------------------------------------------------------------- | ------------ |
| [4.1](https://github.com/wodby/drupal-varnish/tree/master/4.1/Dockerfile) | 3.6          |

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
