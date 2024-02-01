# Dockerfile for Python Backend
FROM python:3.9

# Install git
RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/noooooooooooooooooooooob/baseball_backend.git
WORKDIR /home/svr/baseball_backend/
RUN chmod -R 755 /home/svr/
RUN pip3 install -r ./requirements.txt

EXPOSE 5001