#!/bin/bash
if [ ! -f /nginx/nginx.conf ]; then
	cp -r /config/* /nginx-conf/ 2>&1
fi
rm /etc/nginx/nginx.conf 2>&1
ln -s /nginx-conf/nginx.conf /etc/nginx/nginx.conf 2>&1
rm -R /etc/nginx/conf.d 2>&1
ln -s /nginx-conf/conf.d /etc/nginx/conf.d 2>&1
