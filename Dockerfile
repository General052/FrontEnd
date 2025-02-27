# Use the official Nginx image as the base
FROM nginx:alpine

# Set the working directory to the Nginx web root
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy your project files into the container
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
