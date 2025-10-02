# Base image Node
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy project files
COPY package*.json ./
RUN npm install

COPY . .

# Expose port
EXPOSE 8080

# Gunakan image Nginx resmi
FROM nginx:alpine

# Copy file index.html ke folder default nginx
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Run http-server
CMD ["npm", "start"]
