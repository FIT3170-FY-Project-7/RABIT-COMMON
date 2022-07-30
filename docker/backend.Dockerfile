# Dockerfile for RABIT backend container.
# Uses Node version 18 to build and nginx v1.x to run. OS is Alpine Linux

# Base image
FROM node:18-alpine
WORKDIR /rabit-backend

# Build
COPY ./RABIT-BACKEND .
RUN npm ci --save-dev
