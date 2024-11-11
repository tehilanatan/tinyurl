FROM openjdk:11
COPY target/tinyurl*.jar /usr/src/tinyurl.jar
COPY src/main/resources/application.properties /opt/conf/application.properties
CMD ["java", "-jar", "/usr/src/tinyurl.jar", "--spring.config.location=file:/opt/conf/application.properties"]

