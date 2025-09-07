FROM node:24-alpine

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 5003

CMD ["node", "./dist/main.js"]