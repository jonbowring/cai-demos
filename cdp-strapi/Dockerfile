FROM strapi/base

WORKDIR /my-path

COPY ./package.json ./

RUN yarn install -y build-essential

COPY . .

ENV NODE_ENV production

RUN yarn build

EXPOSE 1337

CMD ["yarn", "develop"]
