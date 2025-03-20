# Use official Node.js image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json before copying the rest (to cache dependencies)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Default command
CMD ["npm", "start"]
