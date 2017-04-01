FROM tomcat:8.0
MAINTAINER AKRAM BLOUZA
ARG releaseVersion 
EXPOSE 8080
#ADD http://sources.cepme150.fr/repo/repository/applications/fr/bpifrance/ocp/poc-webapp/${releaseVersion}/poc-webapp-${releaseVersion}.war ./webapps/
#ADD https://github.com/zulice/poc_app/raw/master/resources/app/poc-webapp-${releaseVersion}.war ./webapps/
ADD https://github.com/zulice/poc_app/raw/master/resources/app/poc-webapp.war ./webapps/
RUN useradd -r -s /sbin/nologin tomcat
RUN chown -R tomcat: /usr/local/tomcat
RUN chgrp -R 0 /usr/local/tomcat/ \
  && chmod -R g+rwX /usr/local/tomcat/
USER tomcat

