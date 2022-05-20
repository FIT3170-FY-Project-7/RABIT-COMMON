# Dockerfile for RABIT container.
# Uses Node version 18 running under Alpine Linux

FROM node:18-alpine AS base

# Build frontend
FROM base AS frontend_builder
WORKDIR /rabit-frontend
COPY ./RABIT-FRONTEND .
RUN npm ci --save-dev
RUN npm run build

# Build backend
FROM base AS backend_builder
WORKDIR /rabit-backend
COPY ./RABIT-BACKEND .
RUN npm ci --save-dev
RUN npm run build

# Import output files to final image
FROM base
WORKDIR /rabit
COPY --from=frontend_builder /rabit-frontend/dist ./frontend/dist
COPY --from=backend_builder /rabit-backend/node_modules ./backend/node_modules
COPY --from=backend_builder /rabit-backend/dist ./backend/dist
