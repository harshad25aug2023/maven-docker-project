# Use an official Tomcat runtime as the base image
FROM tomcat:9

# Remove the default ROOT web application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file into the Tomcat webapps directory
COPY C:\Users\rjart\.jenkins\workspace\maven_docker project\webapp\target /usr/local/tomcat/webapps/ROOT.war

# Expose 
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

