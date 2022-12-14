FROM openjdk:11-jre-slim-buster
ARG JAR_FILE=target/*.jar
RUN mkdir /server
COPY ${JAR_FILE} /server/jw-home-api-gateway.jar
ENTRYPOINT java -jar /server/jw-home-api-gateway.jar
EXPOSE 9090
