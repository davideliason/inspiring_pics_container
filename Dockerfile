 # Use Ubuntu as the base image because I like ubuntu
FROM ubuntu:22.04

# Update the package list and install Apache HTTP Server
RUN apt-get update && apt-get install -y apache2 && apt-get clean

# Expose port 80 for HTTP traffic
EXPOSE 80

# Copy a custom HTML file to the default web directory
COPY index.html /var/www/html/
COPY *.png /var/www/html

# Run Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
