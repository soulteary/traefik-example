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

Finally bind the domain name to the local, open the browser to visit the website:

```bash
echo "dashboard.example.com">>/etc/hosts
```

## Customize Domain and Certs

You can customize domain name and certs by yourself, just replace `example.com` in those files:

- docker-compose.yml
- scripts/generate-certs.sh
- config/tls.toml
