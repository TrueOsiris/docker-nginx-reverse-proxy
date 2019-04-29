FROM nginx:latest
LABEL maintainer="Tim Chaubet tim@chaubet.be"

# Install wget and install/updates certificates
RUN apt-get update \
 && apt-get install -y \
    wget \
    vim \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*

#ENTRYPOINT ["/app/docker-entrypoint.sh"]