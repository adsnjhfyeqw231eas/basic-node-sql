FROM node:18.20.8-bookworm
RUN apt update -y
WORKDIR /app
EXPOSE 8080
COPY package.json .
RUN chmod +x runApp.sh

