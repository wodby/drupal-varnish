# Varnish docker container for Drupal

See [Docker4Drupal](http://docker4drupal.org)

[![Build Status](https://travis-ci.org/wodby/drupal-varnish.svg?branch=master)](https://travis-ci.org/wodby/drupal-varnish)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal-varnish.svg)](https://hub.docker.com/r/wodby/drupal-varnish)

## Supported tags and respective `Dockerfile` links

- [`4.1`, `latest` (*4.1/Dockerfile*)](https://github.com/wodby/drupal-varnish/tree/master/4.1/Dockerfile)

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
