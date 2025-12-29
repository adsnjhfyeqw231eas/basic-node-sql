FROM node:18.20.8-bookworm as builder
RUN apt update -y
WORKDIR /app
EXPOSE 8080
COPY . ./
RUN chmod +x runApp.sh

FROM mysql:9.5 as builder
WORKDIR /app
COPY --from=builder /app/db.sh /db.sh
CMD ["./db.sh"]
