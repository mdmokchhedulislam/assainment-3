FROM node:18.17.1-slim

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=3000


EXPOSE $PORT

CMD ["node", "src/server.js"]