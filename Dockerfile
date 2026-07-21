FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . .

RUN javac app.java

CMD ["java", "app"]
