# nginx-base

## Commands

Makefile includes all commands to use

## Developing

```bash
# Dockerfile
# use Local usage instead Production usage
FROM nginx:alpine

RUN rm /etc/nginx/nginx.conf

# Production usage
# COPY nginx.conf /etc/nginx/nginx.conf

# Developing usage
COPY nginx.conf.local /etc/nginx/nginx.conf
```

```bash
make build-image
```

```bash
make run-dev
```

## Production

Change domain (ip) in `nginx.conf`

```bash
# Dockerfile
# use Production usage instead Developing usage
FROM nginx:alpine

RUN rm /etc/nginx/nginx.conf

# Production usage
COPY nginx.conf /etc/nginx/nginx.conf

# Developing usage
# COPY nginx.conf.local /etc/nginx/nginx.conf
```

```bash
make build-image
```

```bash
make run
```