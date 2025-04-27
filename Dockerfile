# Use a lightweight Java runtime image
FROM eclipse-temurin:23-jre

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/*.jar app.jar

# Expose port 8080 (or whatever your app uses)
EXPOSE 8080

# Command to run your app
ENTRYPOINT ["java", "-jar", "app.jar", "--server.address=0.0.0.0"]
