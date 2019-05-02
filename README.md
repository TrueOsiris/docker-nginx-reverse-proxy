# docker-reverse-proxy-letsencrypt
Nginx reverse proxy + letsencrypt with wildcards &amp; godaddy dns
    
    docker run \
    --name nginx \
    -v /mnt/nginx/config:/nginx-conf:rw \
    -v /mnt/nginx/html:/usr/share/nginx/html \
    -p 8013:80 \
    -d trueosiris/nginx-reverse-proxy

