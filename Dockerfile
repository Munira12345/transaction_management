# Use a base image with Flutter and the latest Dart SDK
FROM cirrusci/flutter:stable

# Set working directory
WORKDIR /app

# Copy project files into the container
COPY . /app

# Install necessary dependencies for Android builds
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    yes | sdkmanager --licenses && \
    flutter upgrade && \
    flutter pub get

# Switch to a non-root user to build
RUN useradd -m flutteruser
USER flutteruser

# Build the Flutter app for Android
RUN flutter build apk --release

# The APK output will be in /app/build/app/outputs/flutter-apk
