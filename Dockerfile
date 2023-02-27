FROM tomcat:8.0
RUN cp -a /var/lib/jenkins/workspace/Build_docker_tomcat_image/java-tomcat-sample/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
