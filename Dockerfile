# Use an official Tomcat runtime as the base image
FROM tomcat:9.0-jdk11-corretto

# Set environment variables if needed (e.g., for database connections)
# ENV DB_URL jdbc:mysql://localhost:3306/mydb
# ENV DB_USER myuser
# ENV DB_PASSWORD mypassword

# Remove the default ROOT web application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file into the Tomcat webapps directory
COPY C:\Users\rjart\.jenkins\workspace\maven_docker project\webapp\target /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port (8080)
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]

