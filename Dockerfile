# Stage 1: Build the Node.js application
FROM node:14-alpine AS build


WORKDIR /app

COPY . .

RUN npm install

# Stage 2: Set up Nginx and serve the Node.js application
FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

# Copy the public folder from the root directory
COPY public /usr/share/nginx/html/public

# Copy the built application from the previous stage
COPY --from=build /app /usr/share/nginx/html

# Expose the port Nginx will listen on
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
