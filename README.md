# Varnish docker container for Drupal

[![Build Status](https://travis-ci.org/wodby/drupal-varnish.svg?branch=master)](https://travis-ci.org/wodby/drupal-varnish)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)

To get full docker-based local environment for Drupal see [Docker4Drupal](http://docker4drupal.org).

[![Wodby Slack](https://www.google.com/s2/favicons?domain=www.slack.com) Join us on Slack](https://slack.wodby.com/)

## Supported tags and respective `Dockerfile` links

- [`4.1-2.0.0`, `4.1`, `latest` (*4.1/Dockerfile*)](https://github.com/wodby/drupal-varnish/tree/master/4.1/Dockerfile)

## Environment Variables Available for Customization

See more at [wodby/varnish](https://github.com/wodby/varnish)

| Environment Variable | Type | Default Value | Required | Description |
| -------------------- | -----| ------------- | -------- | ----------- |
| VARNISH_BACKEND_HOST                  | String |          | ✓ | |
| VARNISH_BACKEND_PORT                  | String |          | ✓ | |
| VARNISH_ERRORS_TTL                    | String | 10m      |   | | 
| VARNISH_GRACE                         | String | 6h       |   | |
| VARNISH_BACKEND_FIRST_BYTE_TIMEOUT    | String | 300s     |   | |
| VARNISH_BACKEND_CONNECT_TIMEOUT       | String | 5s       |   | |
| VARNISH_BACKEND_BETWEEN_BYTES_TIMEOUT | String | 2s       |   | |

## Using in Production

Deploy docker-based infrastructure for Drupal to your own server via [![Wodby](https://www.google.com/s2/favicons?domain=wodby.com) Wodby](https://wodby.com).
