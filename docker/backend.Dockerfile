# Dockerfile for RABIT backend container.
# Uses Node version 18 to build and nginx v1.x to run. OS is Alpine Linux

FROM nginx:1-alpine
WORKDIR /rabit-backend
COPY ./docker/backend.nginx /etc/nginx/conf.d/default.conf