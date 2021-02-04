# Traefik Example

Simple way to use Traefik.

## Guide

Create the docker network first:

```bash
bash scripts/prepare-network.sh
```

Then create a self-signed certificate:

```bash
bash scripts/generate-certs.sh
```

If you want to generate multiple certificates or configure more complex DNS domain name configuration, you can use this tool: [certs-maker](https://github.com/soulteary/certs-maker), usage:

```bash
docker run --rm -it -e CERT_DNS=a.com\;\*.domain.com\;a.c.com -v `pwd`/certs:/ssl soulteary/certs-maker
```

Finally bind the domain name to the local, open the browser to visit the website:

```bash
echo "dashboard.example.com">>/etc/hosts
```

## Customize Domain and Certs

You can customize domain name and certs by yourself, just replace `example.com` in those files:

- docker-compose.yml
- scripts/generate-certs.sh
- config/tls.toml
