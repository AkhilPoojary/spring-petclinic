FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

FROM eclipse-temurin:17-jre
COPY --from=build  --chown=1001:1001 /app/target/*.jar app.jar
USER 1001
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]


