FROM node:12-alpine

LABEL author="bruski"
LABEL email="bruskiwang@outlook.com"
LABEL description="It's the central service of Jarvis"

WORKDIR /app

COPY package*.json yarn.lock ./
RUN npm install --production

COPY . .

CMD [ "yarn", "start"]