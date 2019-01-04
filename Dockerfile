# FROM openjdk:8-jdk-alpine
# VOLUME /tmp
# ARG JAR_FILE
# COPY ${JAR_FILE} app.jar
# ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]


# FROM openjdk:8-jdk-alpine
# VOLUME /tmp

# COPY target/gs-spring-boot-docker4-0.1.0.jar ./

# CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/gs-spring-boot-docker7-0.1.0.jar"]


#Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/gs-spring-boot-docker*.jar

# Add the application's jar to the container
ADD ${JAR_FILE} websocket-demo.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/websocket-demo.jar"]