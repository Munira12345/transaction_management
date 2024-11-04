# Use a base image for Flutter
FROM cirrusci/flutter:stable

# Set working directory
WORKDIR /app

# Copy project files into the container
COPY . /app

# Build the Flutter app for web (as an example; you can also choose Android or iOS)
RUN flutter build web

# Use a lightweight web server to serve the Flutter web app
RUN apt-get update && apt-get install -y nginx
COPY build/web /var/www/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
