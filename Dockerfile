# lts-alpine means long term support and alpine is a very small Linux 
# distribution that is a lot smaller than the default one (node:lts).
# smaller images mean faster builds and startup time that is very handy 
# when it comes to scaling containers for production up and down
FROM node:lts-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# Install all dependencies
RUN npm install

# Copy sources
COPY server.js server.js

CMD [ "npm", "start" ]
