FROM node:lts-bullseye
# download from git
RUN mkdir /home/github && cd /home/github && git clone https://github.com/yenba/denon-rest-api.git
# Set working directory
WORKDIR /home/github/denon-rest-api
# run it
RUN npm install --production
RUN npm audit fix --force
CMD node . $ADDRESS $PORT
