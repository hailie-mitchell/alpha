FROM ubuntu:20.04

RUN adduser --disabled-password --gecos '' alpha
WORKDIR /home/alpha

RUN apt -y update
RUN apt -y install nodejs
RUN apt -y install npm
COPY . .
RUN npm install
RUN npm run build

USER alpha
CMD ["npm","start"]
