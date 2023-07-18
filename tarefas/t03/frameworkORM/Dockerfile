FROM node:14

WORKDIR /frameworkORM
COPY package.json package-lock.json /frameworkORM/

RUN npm install

COPY . /frameworkORM

CMD [ "node", "index.js" ]
