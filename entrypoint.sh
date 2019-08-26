#!/bin/sh -l

chmod +x gradlew

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