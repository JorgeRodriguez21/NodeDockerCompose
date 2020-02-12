FROM node:alpine3.11
WORKDIR /usr/src/app
COPY package*.json ./
RUN apk add --no-cache bash
RUN npm install
COPY . .
EXPOSE 8080