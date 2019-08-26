FROM openjdk:11-jdk

LABEL "maintainer"="Evan Pratten <ewpratten@gmail.com>"
LABEL "repository"="https://github.com/Ewpratten/FRC-actions"
LABEL "homepage"="https://github.com/Ewpratten/FRC-actions"

LABEL "com.github.actions.name"="Build & Test"
LABEL "com.github.actions.description"="Builds robot code, and runs unit tests"
LABEL "com.github.actions.icon"="check-square"
LABEL "com.github.actions.color"="purple"
COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
