FROM node

WORKDIR /app

COPY package.json .

RUN npm i

COPY . .

ENV PORT 3000

EXPOSE ${PORT}

VOLUME [ "/app/data" ]

CMD [ "node", "app.js" ]