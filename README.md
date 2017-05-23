# Varnish docker container image for Drupal

[![Build Status](https://travis-ci.org/wodby/drupal-varnish.svg?branch=master)](https://travis-ci.org/wodby/drupal-varnish)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Wodby Slack](http://slack.wodby.com/badge.svg)](http://slack.wodby.com)

To get full docker-based local environment for Drupal see [Docker4Drupal](http://docker4drupal.org).

## Supported tags and respective `Dockerfile` links

- [`4.1-2.0.0`, `4.1`, `latest` (*4.1/Dockerfile*)](https://github.com/wodby/drupal-varnish/tree/master/4.1/Dockerfile)

## Environment variables available for customization

See more at [wodby/varnish](https://github.com/wodby/varnish)

| Environment Variable | Default Value | Description |
| -------------------- | ------------- | ----------- |
| VARNISH_ERRORS_TTL                    | 10m  | | 
| VARNISH_GRACE                         | 6h   | |
| VARNISH_BACKEND_FIRST_BYTE_TIMEOUT    | 300s | |
| VARNISH_BACKEND_CONNECT_TIMEOUT       | 5s   | |
| VARNISH_BACKEND_BETWEEN_BYTES_TIMEOUT | 2s   | |

## Using in production

Deploy docker-based infrastructure for Drupal to your own server via [![Wodby](https://www.google.com/s2/favicons?domain=wodby.com) Wodby](https://wodby.com).
