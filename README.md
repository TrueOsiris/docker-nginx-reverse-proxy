# trueosiris/reverse-proxy-letsencrypt
## WORK IN PROGRESS

Nginx reverse proxy + letsencrypt with wildcards &amp; godaddy dns
    
    docker run \
    --name nginx \
    -v /mnt/nginx/config:/nginx-conf:rw \
    -v /mnt/nginx/html:/usr/share/nginx/html \
    -p 80:80 \
    -p 443:443 \
    -d trueosiris/nginx-reverse-proxy

