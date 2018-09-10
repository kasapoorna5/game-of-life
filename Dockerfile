FROM tomcat:8.0-jre8
MAINTAINER kasapoorna5
COPY target/*.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
