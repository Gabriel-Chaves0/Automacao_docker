# syntax=docker/dockerfile:1
FROM node:20-alpine AS base
ENV NODE_ENV=production
WORKDIR /app

# Install only production deps
COPY package.json package-lock.json* ./
RUN npm ci --omit=dev

# Copy source
COPY src ./src

EXPOSE 3000
CMD ["node", "src/server.js"]