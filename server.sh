#!/bin/sh
cd /home/svr/baseball_backend/
git pull
pip3 install -r ./requirements.txt
nohup python3 -u /home/svr/baseball_backend/main.py &
cd /home/cli/baseball_frontend/
git pull
nohup npm run dev &
#mv /home/default.conf /etc/nginx/sites-available/default
#service nginx restart