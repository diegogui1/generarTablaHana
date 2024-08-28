# FROM node:latest

# WORKDIR /usr/src/app

# RUN mkdir -p ./resources

# COPY resources ./resources
# COPY app.js .
# COPY package.json .
# COPY xs-app.json .

# RUN npm install

# EXPOSE 8080

# CMD ["npm","start"]

FROM node:14-slim

WORKDIR /usr/src/app
COPY gen/srv .
RUN npm install
COPY app app/
COPY . .
RUN find app -name '*.cds' | xargs rm -f

EXPOSE 4004
USER node
CMD [ "npm", "start" ]