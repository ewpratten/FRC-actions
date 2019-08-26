FROM ubuntu:18.04

COPY LICENSE README.md /

RUN apt-get update

# Install gradle
RUN apt-get install wget -y
RUN apt-get install gradle -y
RUN apt-get remove gradle -y
RUN wget https://services.gradle.org/distributions/gradle-5.0-bin.zip -P /tmp
RUN unzip -d /opt/gradle /tmp/gradle-*.zip

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
