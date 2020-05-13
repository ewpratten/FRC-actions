FROM ubuntu:18.04

COPY LICENSE README.md /

RUN apt-get update

# Install gradle
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN apt-get install openjdk-11-jre-headless -y
RUN wget https://services.gradle.org/distributions/gradle-5.0-bin.zip -P /tmp
RUN unzip -d /opt/gradle /tmp/gradle-*.zip

RUN apt-get install python3 -y
RUN apt-get install python3-pip -y

COPY entrypoint.sh /entrypoint.sh
COPY test-entrypoint.sh /test-entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN chmod +x /test-entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
