# using node 10.16.3 version from
FROM node:10-alpine

# install python and other package
RUN apk add --update git curl python make

#make required directories
RUN mkdir -p <directory path>
#set work directory
WORKDIR <directory path>

#COPY Package file
COPY package.json /.

RUN npm install && npm cache verify

EXPOSE 8000
