FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.ocsr7qk.mongodb.net
ENV MONGODB_USERNAME clarkcookie2
ENV MONGODB_PASSWORD mtWpE7FCjjhClwZj

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]