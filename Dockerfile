FROM node:16

RUN apt update && apt install git -y && rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./

#RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
#COPY . .

COPY app-entrypoint.sh /usr/local/bin


EXPOSE 3000
CMD [ "node", "server.js" ]
ENTRYPOINT [ "app-entrypoint.sh" ]
