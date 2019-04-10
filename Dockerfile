FROM node:alpine

WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3010
CMD ["npm", "start"]
