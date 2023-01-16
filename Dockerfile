FROM ubuntu:20.04
MAINTAINER noob <noob230112@gmail.com>

# Install Nginx
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx
# RUN mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default__
COPY ./default /home/default

# Setting
RUN apt-get install -y vim
RUN apt-get install -y net-tools
RUN apt-get install -y git
RUN mkdir /home/svr/
RUN mkdir /home/cli/

# Install Python
RUN apt-get install -y python3.9 && apt-get install -y python3-pip
WORKDIR /home/svr/
RUN git clone https://github.com/noooooooooooooooooooooob/baseball_backend.git
COPY ./requirements.txt baseball_backend/requirements.txt
RUN chmod -R 755 /home/svr/
RUN pip install -r baseball_backend/requirements.txt

WORKDIR /etc/nginx
CMD ["nginx"]

EXPOSE 80
EXPOSE 13000
EXPOSE 5000