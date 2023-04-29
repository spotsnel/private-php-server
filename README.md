Private PHP server
==================


Base image for running private services using Caddy-tailscale and PHP


### Usage

Place the private site to serve in `./site` and run:

```sh
$ podman run -d \
    -v ./site:/site \
    --env=TS_AUTHKEY=tskey-auth-... \
    ghcr.io/spotsnel/caddy-tailscale-php-server:latest    
```

after this you can navigate to:

    http://privatephp

