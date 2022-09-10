FROM nginx:1.23.1-alpine

RUN rm /etc/nginx/nginx.conf

# Production usage
COPY /nginx/nginx.conf /etc/nginx/nginx.conf