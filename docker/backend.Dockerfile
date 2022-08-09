# Dockerfile for RABIT backend container.
# Uses Node version 18 to build and nginx v1.x to run. OS is Alpine Linux

# Base image
FROM node:18-alpine as base
WORKDIR /rabit-backend
COPY ./RABIT-BACKEND/package.json .
COPY ./RABIT-BACKEND/package-lock.json .
RUN npm ci

# Install dependencies
FROM base AS builder
WORKDIR /rabit-backend
RUN npm ci --save-dev

# Build
COPY ./RABIT-BACKEND .
RUN npx tsc

# # Copy to final container
FROM base
WORKDIR /rabit-backend
COPY --from=builder /rabit-backend/dist ./dist
COPY ./RABIT-BACKEND/.env .
