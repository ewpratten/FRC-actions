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

# if [ "$1" = "x_simulation" ]; then
#     echo "Running simulation task [BETA]"
#     echo "Simulation is not fully supported by @ewpratten. This exists for internal use only by team 5024."

#     echo "Spawning GradleRIO simulation runner to generate sim scripts"
#     ./gradlew simulateJava --console=plain
#     task_pid=$(cat robot/build/pids/simulateJava.pid)
#     kill -9 $task_pid
#     echo "Simulation script has been generated. Killing simulator"

#     echo "Waiting for sockets to close"
#     sleep 2

#     echo "Spawning simulator"
#     timeout 10 ./robot/build/gradlerio_simulateJava.sh || EX=$?

#     if ["$EX" != "124"]; then
#         return 1
#     fi
# fi