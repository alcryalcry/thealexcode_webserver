# nginx-base

## Commands

Makefile includes all commands to use

```bash
build-image:
	docker build -t thealexcode/nginx-base .

run:
	docker run --rm -d -p 80:80 --name nginx thealexcode/nginx-base 

run-dev:
	docker run --rm -it -p 80:80 --name nginx thealexcode/nginx-base 

stop:
	docker stop nginx

remove-image:
	docker rmi thealexcode/nginx-base
```

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