#Start with the base image containing Java runtime
FROM openjdk:8

#Make port 8080 available to the world outside this container
EXPOSE 8080

#Give the jar
ADD target/docker-jenkins-integration.jar docker-jenkins-integration.jar

#Run the jar file
ENTRYPOINT ["java","-jar","/docker-jenkins-integration.jar"]