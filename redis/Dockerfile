FROM	pzimmerman/base_centos

MAINTAINER Phil Zimmerman <phil.zimmerman@twcable.com>

RUN	yum -y install redis && \
mkdir /data && chown redis:redis /data
WORKDIR /data
EXPOSE	6379
CMD	[ "redis-server" ]	
