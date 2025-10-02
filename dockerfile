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

# Run http-server
CMD ["npm", "start"]
