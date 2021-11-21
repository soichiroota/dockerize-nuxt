FROM node:16.13-alpine

ENV HOST 0.0.0.0
EXPOSE 3000

RUN mkdir /app
WORKDIR /app

COPY ./package.json ./yarn.lock ./

RUN yarn install
COPY . .

RUN yarn run build

CMD ["yarn", "run", "start"]
