FROM node:14.16.1 as build

RUN mkdir /usr/app
WORKDIR /usr/app
COPY . /usr/app
RUN npm install
EXPOSE 3000/tcp
EXPOSE 7227/tcp
CMD ["npm", "run", "start"]
