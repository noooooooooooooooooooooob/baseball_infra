# baseball_bakend
직관 인증 및 승률 확인 프로젝트 Infra

### Use for projects:
- Docker: [Docker](https://www.docker.com/)

- DockerHub: [DockerHub](http://flask-sqlalchemy.pocoo.org/2.1/)

<!-- ## Module Download:

Install with pip:

```
$ pip install -r requirements.txt
``` -->
 
## Run Docker
### Build docker
```
$ docker build -t noob230112/baseball:v1.0.0_alpha.0 .
```

### Run docker for develop
```
$ docker run -itd -p 80:80 --name noob_baseball noob230112/baseball:{tag}
```
In Docker Nginx, Default port is `80`

## Reference

## Log

- Version 1.0.0_alpha.0 ( 2023.01.15 )
