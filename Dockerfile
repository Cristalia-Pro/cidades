# Use the official Nginx image as the base
FROM nginx:alpine

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file into the container
COPY nginx.conf /etc/nginx/conf.d/nginx.conf

# Copy your JSON data file into the Nginx web root
COPY data.json /usr/share/nginx/html/cidades.json

# Expose port 80 (Nginx's default HTTP port)
EXPOSE 80

# Command to run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]