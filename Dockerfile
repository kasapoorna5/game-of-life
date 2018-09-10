FROM tomcat:8.0-jre8
MAINTAINER kasapoorna5
COPY /var/lib/jenkins/workspace/pipilinedocker/gameoflife-web/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
