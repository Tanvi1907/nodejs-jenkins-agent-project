FROM node:22

WORKDIR /app

COPY . .

EXPOSE 3000

CMD ["node","app.js"]
