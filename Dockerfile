# Use the official Nginx image as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the HTML and CSS files to the working directory
COPY index.html .
COPY style.css .
COPY clouds.jpg .
# Expose port 80 for the web server
EXPOSE 8080

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]

