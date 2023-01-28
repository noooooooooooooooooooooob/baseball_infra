# baseball_bakend
직관 인증 및 승률 확인 프로젝트 Infra

### Use for projects:
- Docker: [Docker](https://www.docker.com/)

- DockerHub: [DockerHub](https://hub.docker.com/)

## Run Docker
### pull docker
```
$ docker login
$ docker pull noob230112/baseball:{tag}
```

### Build docker
```
$ docker build --no-cache -t noob230112/baseball:{tag} .
```

### Run docker for develop
```
$ docker run -itd -p 80:80 -p 5001:5001 -p 3000:3000 --name noob_baseball noob230112/baseball:{tag}
$ docker exec -it noob_baseball /bin/bash
$ /home/server.sh
```
In Docker Nginx, Default port is `80`
In Docker Flask, Default port is `5001`
In Docker Node, Default port is `3000`

## Reference

## Log
- Version 1.0.0_alpha.0 ( 2023.01.15 )
- Version 1.0.0_alpha.1 ( 2023.01.16 )
- Version 1.0.0_alpha.2 ( 2023.01.19 )
