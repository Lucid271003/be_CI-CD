# server/Dockerfile
FROM node:20-alpine

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

RUN npm install --production # Install only production dependencies

COPY . .

EXPOSE 5000 

# Or whatever port your backend runs on (process.env.PORT || 5000)

CMD ["node", "server.js"]