#FROM openjdk:11
#COPY target/demo1.jar app.jar
#CMD ["java","-jar","app.jar"]
#FROM maven:3.6.3 AS maven


#WORKDIR /usr/src/app
#COPY . /usr/src/app
# Compile and package the application to an executable JAR
#RUN mvn package

# For Java 17,
FROM openjdk:11-jdk-slim

#WORKDIR /opt/app

# Copy the spring-boot-api-tutorial.jar from the maven stage to the /opt/app directory of the current stage.
#COPY --from=maven /usr/src/app/target/demo1.jar /opt/app/
ADD target/demo1.jar demo1.jar

ENTRYPOINT ["java","-jar","demo1.jar"]