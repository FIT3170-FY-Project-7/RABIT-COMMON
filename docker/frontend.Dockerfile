# Dockerfile for RABIT frontend container.
# Uses Node version 18 to build and nginx v1.x to run. OS is Alpine Linux

FROM node:18-alpine AS base

# build
FROM base AS builder
WORKDIR /rabit-frontend
COPY ./RABIT-FRONTEND .
RUN npm ci --save-dev
RUN npm run build

# copy files to final container
FROM nginx:1-alpine
WORKDIR /rabit-frontend
COPY --from=builder /rabit-frontend/dist /var/www/rabit-frontend
COPY ./docker/frontend.nginx /etc/nginx/conf.d/default.conf