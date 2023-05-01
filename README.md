Private PHP server
==================


Base image for running private services using Caddy-tailscale and PHP


### Usage

Place the private site to serve in `./site` and run:

```sh
$ podman run -d \
    -v ./site:/site \
    --env=TS_AUTHKEY=tskey-auth-... \
    ghcr.io/spotsnel/private-php-server:latest    
```

after this you can navigate to:

    http://privatephp


##### Note

This baseimage is available in both `x86_64` (AMD64) and `aarch64` (arm64) format. If you have issues on deployment, you can use:

```Dockerfile
FROM --platform=linux/amd64 ghcr.io/spotsnel/private-php-server:latest    

```

or

```Dockerfile
FROM --platform=linux/arm64 ghcr.io/spotsnel/private-php-server:latest    

```

to force a specific platform.