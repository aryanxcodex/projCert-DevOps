FROM devopsedu/webapp

# Copy all files in 'website' to Apache's root directory
COPY website/ /var/www/html/

# Optional: Remove default index.html if present in the base image
RUN rm -f /var/www/html/index.html || true

# Start Apache in foreground
CMD ["apachectl", "-D", "FOREGROUND"]
