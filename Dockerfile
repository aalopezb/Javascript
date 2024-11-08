# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy files
COPY package.json ./
COPY app.js ./

# Install dependencies
RUN npm install

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
