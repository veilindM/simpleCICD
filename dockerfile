# Base image nginx
FROM nginx:alpine

# Copy file index.html ke folder default nginx
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Command default nginx
CMD ["nginx", "-g", "daemon off;"]
