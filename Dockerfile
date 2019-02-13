FROM java:8
VOLUME /tmp
ADD https://github.com/yonwon01/petclinic-java/blob/master/spring-petclinic-customers-service/target/spring-petclinic-customers-service-1.5.9.jar /app.jar
#ENV SPRING_PROFILES_ACTIVE docker
RUN bash -c 'touch /app.jar'

# Expose
EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
