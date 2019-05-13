# trueosiris/nginx-reverse-proxy


Nginx reverse proxy
    
    docker run \
    --name nginx \
    -v /hostfolder/nginx/config:/nginx-conf:rw \
    -v /hostfolder/nginx/html:/usr/share/nginx/html \
    -p 80:80 \
    -p 443:443 \
    -d trueosiris/nginx-reverse-proxy

