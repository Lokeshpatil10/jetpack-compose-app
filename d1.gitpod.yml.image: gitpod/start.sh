#!/bin/bash
export ANDROID_HOME=$HOME/android-sdk
export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH

# Start the emulator
nohup emulator -avd pixel_emulator -no-audio -no-window -gpu swiftshader_indirect &
