FROM ubuntu
RUN apt-get update &&  apt-get install -y apache2 
#openjdk-8-jdk wget gnupg1
#RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key |  apt-key add - \
    && sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' \
    &&  apt update && apt install -y jenkins

EXPOSE 80 
CMD ["/usr/sbin/apache2ctl -k start"]

