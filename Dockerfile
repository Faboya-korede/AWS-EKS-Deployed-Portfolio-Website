docker stop # Base image
FROM nginx

# Set the working directory to the Nginx web server directory
WORKDIR /usr/share/nginx/html/docker rem 

# Copy the website files to the appropriate directory
COPY . .

# Install any necessary dependencies
RUN apt-get update && apt-get install -y curl

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx when the container is launched
CMD ["nginx", "-g", "daemon off;"]
