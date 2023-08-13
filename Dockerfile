FROM centos:latest
MAINTAINER ossama.ferjani@insat.ucar.tn
RUN yum install -y httpd \
zip \
unzip 
ADD https://www.free-css.com/free-css-templates/page2/photobusiness.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photobusiness.zip 
RUN cp -rvf photobusiness/* .
RUN rm -rf photobusiness photobusiness.zip 
CMD ["/usr/sbin/httpd","D","FOREGROUND"]
EXPOSE 80
#probebly the last change
