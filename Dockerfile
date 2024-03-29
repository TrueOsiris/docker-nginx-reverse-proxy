FROM nginx:latest
LABEL maintainer="Tim Chaubet tim@chaubet.be"

# Install wget and install/updates certificates
# update to 1.17.9
RUN apt-get update -y \
 && apt-get upgrade -y \
 && apt-get install -y \
    wget \
    vim \
 && apt-get clean \
 && apt-get autoclean -y \
 && apt-get autoremove -y \
 && rm -r /var/lib/apt/lists/*

VOLUME ["nginx-conf"]

COPY ./config /config
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/docker-entrypoint.sh"]
