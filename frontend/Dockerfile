FROM node:18-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5000
ENV HOST=0.0.0.0
RUN npm run build
CMD [ "npm", "run","preview" ]