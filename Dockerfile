FROM ubuntu:20.04
MAINTAINER noob <noob230112@gmail.com>

# Install Nginx
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx
COPY ./default /home/default
RUN mv /home/default /etc/nginx/sites-available/default
# COPY ./default /home/default.conf

# Setting
RUN apt install -y vim
RUN apt install -y net-tools
RUN apt install -y git
RUN apt install -y systemd
RUN apt install -y psmisc
RUN mkdir /home/svr/
RUN mkdir /home/cli/

# Install Python
RUN apt-get install -y python3.9 && apt-get install -y python3-pip
WORKDIR /home/svr/
RUN git clone https://github.com/noooooooooooooooooooooob/baseball_backend.git
WORKDIR /home/svr/baseball_backend/
RUN chmod -R 755 /home/svr/
RUN nohup python3 -u /home/svr/baseball_backend/main.py &

# Install Node
RUN apt install -y curl
RUN curl -s https://deb.nodesource.com/setup_16.x | bash
RUN apt-get update
RUN apt install -y nodejs
RUN npm install -g npm@7.0.0
RUN npm install -g yarn
WORKDIR /home/cli/
RUN git clone https://github.com/noooooooooooooooooooooob/baseball_frontend.git
WORKDIR /home/cli/baseball_frontend/
RUN yarn 
RUN nohup npm run dev &

COPY ./server.sh /home/server.sh
COPY ./stop.sh /home/stop.sh
RUN chmod +x /home/server.sh
RUN chmod +x /home/stop.sh
WORKDIR /home
CMD ["nginx"]