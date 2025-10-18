# Use official Nginx image
FROM nginx:alpine

# Remove default HTML content
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into Nginx
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
