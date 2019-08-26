FROM openjdk:11-jdk

LABEL "maintainer"="Evan Pratten <ewpratten@gmail.com>"
LABEL "repository"="https://github.com/Ewpratten/FRC-actions"
LABEL "homepage"="https://github.com/Ewpratten/FRC-actions"

LABEL "com.github.actions.name"="Build & Test"
LABEL "com.github.actions.description"="Builds robot code, and runs unit tests"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
