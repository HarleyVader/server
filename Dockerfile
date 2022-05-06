<<<<<<< HEAD
FROM debian:latest
FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["package.json", "server.js", "user.js","routes.js","responses.js", "package-lock.json", "./"]
COPY . .
EXPOSE 3000
RUN chown -R node /usr/src/app
USER node
CMD ["pm2", "server.js","routes.js","responses.js","https.js"]
=======
FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["package.json", "index.js", "user.js", "package-lock.json", "./"]
COPY . .
EXPOSE 3000
RUN chown -R node /usr/src/app
USER node
CMD ["node", "./lib/index.js"]
>>>>>>> fa3db86d9023ff675e2950b904158173bb2378e0
