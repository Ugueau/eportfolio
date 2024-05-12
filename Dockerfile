# Use the official NGINX image as base
FROM nginx:latest

# Remove default NGINX website files
RUN rm -rf /usr/share/nginx/html/*

# Copy the Flutter web build files to NGINX html directory
COPY web /usr/share/nginx/html

# Expose the port NGINX runs on
EXPOSE 80
