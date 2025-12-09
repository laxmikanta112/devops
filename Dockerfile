# Use Node 15 base image
FROM node:15-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the code
COPY . .

# Expose application port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
