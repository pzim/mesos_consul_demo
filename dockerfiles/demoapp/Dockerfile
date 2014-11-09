FROM	pzimmerman/base_centos

MAINTAINER Phil Zimmerman <phil.zimmerman@twcable.com>

RUN	yum -y install ruby rubygems && \
gem install --no-ri --no-rdoc sinatra redis
RUN	mkdir -p /data/apps
ADD	resources/demoapp.rb /data/apps/
EXPOSE	4567
WORKDIR	/data/apps/
CMD	[ "/usr/bin/ruby", "demoapp.rb" ]
