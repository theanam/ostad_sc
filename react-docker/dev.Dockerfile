FROM node:20-alpine as builder
WORKDIR /home/project
COPY ./package.json .
RUN yarn
COPY . .
RUN yarn global add vite
CMD ["vite","--host"]