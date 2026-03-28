# Dockerfile do Config-Server
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copia o JAR do config-server
COPY build/libs/*-SNAPSHOT.jar app.jar

ENV TZ=America/Sao_Paulo

EXPOSE 8084

ENTRYPOINT ["java", "-jar", "app.jar"]
