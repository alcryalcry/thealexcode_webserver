# nginx-base

## Deploy

Change domain (ip) in `nginx.conf`

```bash
# Dockerfile
# use Production usage instead Developing usage
FROM nginx:alpine

RUN rm /etc/nginx/nginx.conf

# Production usage
COPY nginx.conf /etc/nginx/nginx.conf
```

```bash
docker context use remote
docker-compose up -d
```

### rebuild production:

```bash
docker context use remote
docker-compose down
docker-compose up -d --build
```
