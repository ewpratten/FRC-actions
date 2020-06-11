#! /bin/bash

apt-get install git -y

mkdir frc
cd frc
git clone https://github.com/frc5024/InfiniteOffseason.git repo

cd repo

git submodule update --init --recursive

# Init gradle
/opt/gradle/gradle-5.0/bin/gradle wrapper

chmod +x gradlew