FROM maven:3.8.4-openjdk-17

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN mvn dependency:resolve

COPY src ./src

CMD ["mvn", "spring-boot:run"]
