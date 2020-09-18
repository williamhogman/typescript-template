FROM node:14.9.0-alpine

WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm install

ADD . /usr/src/app
RUN npm run tsc
CMD [ "npm", "start" ]