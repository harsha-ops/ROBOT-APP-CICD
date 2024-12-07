FROM debian:10 AS build

# Install required packages
RUN apt-get update && apt-get install -y \
    maven \
    openjdk-11-jre-headless ca-certificates-java

# Force update of certificates
RUN update-ca-certificates -f && \
    /var/lib/dpkg/info/ca-certificates-java.postinst configure

WORKDIR /app

COPY pom.xml /app/

RUN mvn dependency:resolve

COPY src /app/src/

RUN mvn package

# RUN

FROM openjdk:8-jdk

EXPOSE 8080

WORKDIR /app

ENV CART_ENDPOINT=cart:8080
ENV DB_HOST=mysql

COPY --from=build /app/target/shipping-1.0.jar shipping.jar

CMD [ "java", "-Xmn256m", "-Xmx768m", "-jar", "shipping.jar" ]
