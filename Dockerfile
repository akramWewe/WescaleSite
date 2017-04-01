FROM tomcat:8.0
MAINTAINER AKRAM BLOUZA
ARG releaseVersion 
EXPOSE 8080
ADD /resources/app/wescale.war ./webapps/
RUN useradd -r -s /sbin/nologin tomcat
RUN chown -R tomcat: /usr/local/tomcat
RUN chgrp -R 0 /usr/local/tomcat/ \
  && chmod -R g+rwX /usr/local/tomcat/
USER tomcat

