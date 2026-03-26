# Use Tomcat 10 with Java 17 (You can change versions if needed)
FROM tomcat:10.1-jre21

# Remove default Tomcat apps (optional, keeps things clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file from Eclipse into the Tomcat webapps folder.
# Naming it ROOT.war makes your app accessible at localhost:8080/ instead of localhost:8080/myapp/
COPY censo.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080
