# Dockerfile for RABIT backend container.
# Uses Node version 18 to build and nginx v1.x to run. OS is Alpine Linux

FROM node:18-alpine as base
WORKDIR /rabit-backend
RUN npm install express multer cors nodemon -save

FROM base as builder
COPY ./RABIT-FRONTEND/server.tsx .
RUN npm install typescript @types/node --save-dev

RUN npx tsc server.tsx

FROM base
COPY --from=builder /rabit-backend/server.js .
