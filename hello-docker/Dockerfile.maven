FROM maven:3.5-jdk-8-alpine AS build

COPY src /usr/src/hello-docker/src
COPY pom.xml /usr/src/hello-docker
RUN mvn -f /usr/src/hello-docker/pom.xml clean package

FROM openjdk:8-jre-alpine
COPY --from=build /usr/src/hello-docker/target/hello-docker-0.0.1-SNAPSHOT.jar /usr/hello-docker/hello-docker-0.0.1-SNAPSHOT.jar  

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/hello-docker/hello-docker-0.0.1-SNAPSHOT.jar"]
