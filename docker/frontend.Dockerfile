# Dockerfile for RABIT frontend container.
# Uses Node version 18 to build and nginx v1.x to run. OS is Alpine Linux

# Install dependencies
FROM node:18-alpine AS builder
WORKDIR /rabit-frontend
ENV CPPFLAGS="-DPNG_ARM_NEON_OPT=0"
COPY ./RABIT-FRONTEND/package.json .
COPY ./RABIT-FRONTEND/package-lock.json .
# Install required dependencies for node modules
RUN apk add --no-cache autoconf automake file g++ libtool make nasm libpng-dev bash
RUN npm ci --save-dev

# Build
COPY ./RABIT-FRONTEND .
RUN npm run build

# Copy files to final container
FROM nginx:1-alpine
COPY --from=builder /rabit-frontend/dist /usr/share/nginx/html
COPY ./docker/frontend.nginx /etc/nginx/conf.d/default.conf
