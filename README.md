# trueosiris/nginx-reverse-proxy

![Trueosiris Rules](https://img.shields.io/badge/trueosiris-rules-f08060)
[![Docker Pulls](https://badgen.net/docker/pulls/trueosiris/nginx-reverse-proxy?icon=docker&label=pulls)](https://hub.docker.com/r/trueosiris/nginx-reverse-proxy/)
[![Docker Stars](https://badgen.net/docker/stars/trueosiris/nginx-reverse-proxy?icon=docker&label=stars)](https://hub.docker.com/r/trueosiris/nginx-reverse-proxy/)
[![Docker Image Size](https://badgen.net/docker/size/trueosiris/nginx-reverse-proxy?icon=docker&label=image%20size)](https://hub.docker.com/r/trueosiris/nginx-reverse-proxy/)
![Github stars](https://badgen.net/nginx-reverse-proxyhub/stars/trueosiris/docker-nginx-reverse-proxy?icon=nginx-reverse-proxy&hub&label=stars)
![Github forks](https://badgen.net/nginx-reverse-proxyhub/forks/trueosiris/docker-nginx-reverse-proxy?icon=nginx-reverse-proxy&hub&label=forks)
![Github issues](https://img.shields.io/nginx-reverse-proxyhub/issues/TrueOsiris/docker-nginx-reverse-proxy)
![Github last-commit](https://img.shields.io/nginx-reverse-proxyhub/last-commit/TrueOsiris/docker-nginx-reverse-proxy)

### environment variables

| Environment Variable | Key | Description |
| -------------------- | ---------------------------- | ------------------------------------------------------------------------------- |
| TZ | Europe/Brussels | timezone for ntpdate |

### ports

| Host Port | Container Port |
| --------- | -------------- |
| 80        | 80             |
| 443       | 443            |

### volumes

| Volume                    | Container path                                                   |
| ------------------------- | ---------------------------------------------------------------- |
| /hostfolder/nginx/config  | /nginx-conf |
| /hostfolder/nginx/html    | /usr/share/nginx/html |

### links

github repo: https://github.com/TrueOsiris/docker-nginx-reverse-proxy <br>
dockerhub repo: https://hub.docker.com/repository/docker/trueosiris/nginx-reverse-proxy <br>


Nginx reverse proxy
    
    docker run \
    --name nginx \
    -v /hostfolder/nginx/config:/nginx-conf:rw \
    -v /hostfolder/nginx/html:/usr/share/nginx/html \
    -p 80:80 \
    -p 443:443 \
    -d trueosiris/nginx-reverse-proxy

