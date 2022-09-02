FROM nginx:alpine

RUN rm /etc/nginx/nginx.conf

# Production usage
COPY nginx.conf /etc/nginx/nginx.conf

# Developing usage
# COPY nginx.conf.local /etc/nginx/nginx.conf
