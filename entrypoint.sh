#!/bin/sh -l

# Init gradle
/opt/gradle/gradle-5.0/bin/gradle wrapper

chmod +x gradlew

# Check for correct build command
if [ "$1" = "build" ]; then
    echo "Running only build task"
    ./gradlew build
fi

if [ "$1" = "unit_test" ]; then
    echo "Running only test task"
    ./gradlew test
fi

if [ "$1" = "all" ]; then
    echo "Running all tasks"
    ./gradlew test
    ./gradlew build
fi