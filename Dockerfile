FROM maven:3-jdk-11 AS MAVEN_BUILD

MAINTAINER Nadir Jabbarli

COPY pom.xml /build/
COPY src /build/src/

WORKDIR /build/
RUN mvn package

FROM openjdk:11-slim

WORKDIR /app

COPY --from=MAVEN_BUILD /build/target/demo.jar /app/

ENTRYPOINT ["java", "-jar", "demo.jar"]