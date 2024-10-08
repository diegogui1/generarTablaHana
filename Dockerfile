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

FROM node:18-alpine

WORKDIR /usr/src/app
COPY package*.json ./
COPY default-env.json ./
RUN npm install

COPY . .
 

#RUN find app -name '*.cds' | xargs rm -f

EXPOSE 4004
#USER node
CMD [ "npm", "start" ]