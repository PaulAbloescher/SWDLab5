FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Declare dependencies
COPY package*.json ./

# Install all dependencies
RUN npm install

# Copy the app to the app directory
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]