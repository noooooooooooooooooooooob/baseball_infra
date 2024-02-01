# Dockerfile for Node Frontend
FROM node:14
 
# Install git
RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g npm@7.0.0
RUN npm install -g yarn

WORKDIR /home/cli/
RUN git clone https://github.com/noooooooooooooooooooooob/baseball_frontend.git
WORKDIR /home/cli/baseball_frontend/
RUN yarn

EXPOSE 3000