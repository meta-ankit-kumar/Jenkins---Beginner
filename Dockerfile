FROM node:latest

WORKDIR /app

COPY package*.json ./

COPY . .

ENV npm_config_cache /home/node/app/.npm

