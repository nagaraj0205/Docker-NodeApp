FROM node:16-alpine
LABEL maintainer="Venkatesh <venkatesh.vgs@gmail.com>"
RUN echo " Try to build my application"
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 3000
ENTRYPOINT ["npm","start"]
