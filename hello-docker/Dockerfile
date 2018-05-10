FROM maven:3.5-jdk-8-alpine

COPY src /usr/src/hello-docker/src
COPY pom.xml /usr/src/hello-docker
RUN mvn -f /usr/src/hello-docker/pom.xml clean package

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/src/hello-docker/target/hello-docker-0.0.1-SNAPSHOT.jar"]
