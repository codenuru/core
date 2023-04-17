FROM node:18-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .
## EXPOSE [Port you mentioned in the vite.config file]
EXPOSE 3000

CMD ["npm", "run", "dev"]
