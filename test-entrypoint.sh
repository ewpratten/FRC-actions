#! /bin/bash

apt-get install git -y

mkdir frc
cd frc
git clone https://github.com/frc5024/DeepSpace-SWI.git
cd DeepSpace-SWI

# Init gradle
/opt/gradle/gradle-5.0/bin/gradle wrapper

chmod +x gradlew