FROM node:18-alpine

ENV INSTANA_AUTO_PROFILE true

WORKDIR /app

COPY package.json /app/

RUN npm install

COPY server.js /app/

EXPOSE 8080

CMD ["node", "server.js"]