#!/bin/bash

export WORKSPACE=`pwd`

cd $WORKSPACE

# Download Android NDK (r27)
wget https://dl.google.com/android/repository/android-ndk-r27d-linux.zip
unzip android-ndk-r27d-linux.zip

# Export Android SDK
export ANDROID_NDK_HOME=${WORKSPACE}/android-ndk-r27d

# Clone libGPUInfo source
git clone https://github.com/ARM-software/libGPUInfo.git

pushd ${WORKSPACE}/libGPUInfo > /dev/null
./android_build.sh Release
popd > /dev/null
