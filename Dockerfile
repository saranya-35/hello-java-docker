FROM openjdk:11-jdk-slim
COPY HelloWorld.java /app/HelloWorld.java
WORKDIR /app
RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]


