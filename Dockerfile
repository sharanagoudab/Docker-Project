FROM openjdk:21-jdk
COPY target/Docker-Project.jar /
EXPOSE 8080
CMD ["java","-jar","Docker-Project.jar"]
#####

