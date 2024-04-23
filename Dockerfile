# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Set the working directory in the container to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container at /usr/share/nginx/html
ADD src .

# Make port 80 available to the world outside this container
EXPOSE 80

# Run nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]