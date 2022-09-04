# nginx-base

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
docker context use default
docker-compose up -d
```

## Deploy

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
docker context use remote
docker-compose up -d
```

### rebuild production:

```bash
docker context use remote
docker-compose up --build -d
```
