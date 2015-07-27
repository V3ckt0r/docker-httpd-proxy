FROM centos:latest
Maintainer vect0r
LABEL Vendor="CentOS"

RUN yum -y update && yum clean all
RUN yum -y install httpd && yum clean all

EXPOSE 80

#Simple startup script to aviod some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

#Copy config file across
COPY ./httpd.conf /etc/httpd/conf/httpd.conf
COPY ./example.com /var/www/example.com
COPY ./example2.com /var/www/example2.com
COPY ./sites-available /etc/httpd/sites-available
COPY ./sites-enabled /etc/httpd/sites-enabled





CMD ["/run-httpd.sh"]
