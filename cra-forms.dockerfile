FROM node:16 as builder

COPY cra-forms /app
WORKDIR /app

RUN yarn install

RUN yarn build

EXPOSE 3000

CMD [ "yarn", "start" ]