FROM node:16 as builder

COPY nextjs-crud /app
WORKDIR /app

RUN yarn install

EXPOSE 3000

CMD [ "yarn", "dev" ]