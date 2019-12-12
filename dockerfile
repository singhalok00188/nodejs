# using node 10.16.3 version from
FROM node:10-alpine

# install python and other package
RUN apk add --update git curl python make

#make required directories
RUN mkdir -p C:\Dockertest\test
#set work directory
WORKDIR C:\Dockertest\test

#COPY Package file
COPY package.json /.

RUN npm install && npm cache verify

EXPOSE 8000
