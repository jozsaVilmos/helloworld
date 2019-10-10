FROM java:8

LABEL maintainer="Vilmos"

VOLUME /tmp

EXPOSE 5000

# The application's jar file
ARG JAR_FILE=hellowrld-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} hellowrld-0.0.1-SNAPSHOT.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/hellowrld-0.0.1-SNAPSHOT.jar"]