FROM tomcat:8.0-jre8
MAINTAINER kasapoorna5
COPY /var/lib/jenkins/workspace/pipilinedocker/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8081
CMD ["catalina.sh", "run"]
