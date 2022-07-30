# Dockerfile for RABIT backend container.
# Uses Node version 18 to build and nginx v1.x to run. OS is Alpine Linux

# Base image for which both builder and final is based on
FROM node:18-alpine as base
WORKDIR /rabit-backend
COPY ./RABIT-BACKEND/package.json .
COPY ./RABIT-BACKEND/package-lock.json .

# Build
FROM base AS builder
WORKDIR /rabit-backend
COPY ./RABIT-BACKEND .
RUN npm ci --save-dev
RUN npm run build

# Copy to final image
FROM base
WORKDIR /rabit-backend
RUN npm ci
COPY --from=builder /rabit-backend/dist ./dist
COPY ./RABIT-BACKEND/.env .
