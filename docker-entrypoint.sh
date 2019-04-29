#!/bin/bash
if [ ! -f /nginx/nginx.conf ]; then
	cp -r /config/* /nginx/
fi
rm /etc/nginx/nginx.conf
ln -s /nginx/nginx.conf /etc/nginx/nginx.conf
rm -R /etc/nginx/conf.d
ln -s /nginx/conf.d /etc/nginx/conf.d
