# --------------------------------
#
# dockerfile for ubuntu
# + apache2
# + github
#
# --------------------------------

FROM ubuntu:18.04

# Update aptitude with new repo
RUN apt-get update

# Install software
RUN apt-get install -y git
RUN apt-get -y install apache2

# Edit html file
RUN git clone https://github.com/Alex8Efremov/WebSite_test.git
RUN cp -r WebSite_test/* /var/www/html
RUN rm -r WebSite_test


CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
