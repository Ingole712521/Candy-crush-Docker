# Stage 1: Build the Node.js application
FROM node:14-alpine AS build

# Set working directory
WORKDIR /app

# Copy the application code (excluding the public folder)
COPY . .

# Install dependencies
RUN npm install

# Stage 2: Set up Nginx and serve the Node.js application
FROM nginx:alpine

# Copy Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the public folder from the root directory
COPY public /usr/share/nginx/html/public

# Copy the built application from the previous stage
COPY --from=build /app /usr/share/nginx/html

# Expose the port Nginx will listen on
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
