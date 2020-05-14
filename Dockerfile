FROM openjdk:8-jdk-alpine
RUN mkdir /opt/my/service
ADD var/jenkins_home/workspace/RestaurantListGradle/build/libs/RestaurantList-0.0.1-SNAPSHOT.jar /opt/my/service
EXPOSE 9001
ENTRYPOINT ["java", "-jar", "/opt/my/service/RestaurantList-0.0.1-SNAPSHOT.jar"]
