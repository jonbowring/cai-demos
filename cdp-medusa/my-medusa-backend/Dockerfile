FROM node:17.1.0

WORKDIR /app/medusa

RUN apt-get update

RUN apt-get install -y python

RUN npm install -g npm@latest

RUN npm install -g @medusajs/medusa-cli@latest

RUN medusa new . --seed

EXPOSE 9000

CMD ["medusa","develop"]


