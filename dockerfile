FROM devopsedu/webapp

# Set working directory (optional but clean)
WORKDIR /var/www/html

# Remove default index.html (before copy)
RUN rm -f /var/www/html/index.html

# Copy your PHP website code into the container
COPY website/ /var/www/html/

# Start Apache
CMD ["apachectl", "-D", "FOREGROUND"]
