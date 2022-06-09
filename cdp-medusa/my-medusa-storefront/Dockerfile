FROM node:16

WORKDIR /app/medusa

COPY package*.json ./

ENV NEXT_PUBLIC_MEDUSA_URL=http://localhost:9000

RUN npm install

COPY . .

EXPOSE 8000

CMD ["npm", "run", "dev"]
