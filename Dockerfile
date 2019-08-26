FROM openjdk:11-jdk

COPY LICENSE README.md /

RUN apt-get install gradle

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
