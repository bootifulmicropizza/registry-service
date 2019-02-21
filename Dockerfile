FROM openjdk:8u191-jre-alpine3.8

EXPOSE 8761
EXPOSE 8762

VOLUME /tmp

ADD target/registry-service.jar /app/dist/registry-service.jar

ENTRYPOINT java -Dserver.port=$EUREKA_HOST_PORT -Deureka.instance.hostname=$EUREKA_HOST_NAME -Dspring.profiles.active=$BOOTIFUL_MICRO_PIZZA_ENV -Djava.security.egd=file:/dev/./urandom -jar /app/dist/registry-service.jar
