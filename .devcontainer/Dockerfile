FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install Dependencies
RUN sudo apt update \
    && sudo apt install -y clang cmake ninja-build pkg-config libgtk-3-dev openjdk-21-jdk

RUN mkdir sdks

# Install Android SDK
RUN mkdir /sdks/android \
    && cd /sdks/android \
    && wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip \
    && unzip commandlinetools-linux-11076708_latest.zip \
    && sudo rm commandlinetools-linux-11076708_latest.zip \
    && yes | sudo cmdline-tools/bin/sdkmanager --sdk_root=/sdks/android --install "cmdline-tools;latest" \
    && chown -R vscode:vscode .

ENV ANDROID_SDK_ROOT="/sdks/android/"

# Install Flutter SDK
RUN cd /sdks \
    && wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.16.9-stable.tar.xz \
    && tar xf flutter_linux_3.16.9-stable.tar.xz \
    && sudo rm flutter_linux_3.16.9-stable.tar.xz

RUN yes | /sdks/flutter/bin/flutter doctor --android-licenses \
    && /sdks/flutter/bin/flutter doctor \
    && chown -R vscode:vscode /sdks/flutter

# Update Path
ENV PATH="${PATH}:/sdks/flutter/bin/:/sdks/android/cmdline-tools/latest/bin/"

# Config Flutter
RUN flutter config --android-sdk "/sdks/android/"
