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
