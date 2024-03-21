FROM node:lts-alpine

WORKDIR /app

COPY package.json package-lock.json /app/
RUN npm install

COPY . /app/

CMD [ "npm", "start" ]