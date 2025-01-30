FROM gitpod/workspace-full

USER root

RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    android-sdk \
    qemu-kvm \
    libvirt-daemon-system \
    libvirt-clients \
    bridge-utils \
    && apt-get clean

ENV ANDROID_HOME=/home/gitpod/android-sdk
ENV PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH

RUN sdkmanager --install "platforms;android-33" "system-images;android-33;google_apis;x86_64"
RUN echo "no" | avdmanager create avd -n pixel_emulator -k "system-images;android-33;google_apis;x86_64"

USER gitpod
