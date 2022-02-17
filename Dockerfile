FROM amazoncorretto:11-alpine-jdk
VOLUME /tmp
EXPOSE 8090
ARG JAR_FILE=target/api-gateway-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} api-gateway.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh","-c","java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /api-gateway.jar" ]