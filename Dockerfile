FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app Dependecies
# The wildcard is used to escure both package.json and -lock.json are copied

COPY package*.json ./

RUN npm install -g nodemon

RUN npm install

# For production, the command RUN npm ci --only=production

# Bundling app source

COPY . .

# Expose is the command used for mapping the port on the docker daemon

EXPOSE 8080

# CMD is used for defining commands on the app itself

CMD ["nodemon", "server.js"]

