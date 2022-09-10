FROM nginx:1.23.1-alpine

RUN rm /etc/nginx/nginx.conf

COPY /nginx/nginx.conf /etc/nginx/nginx.conf