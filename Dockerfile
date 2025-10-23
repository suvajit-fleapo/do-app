# Use an official Node.js runtime as a base image
FROM node:25-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if they exist)
COPY package*.json ./

# Install dependencies (if any)
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose a port if your app listens on one (optional)
# EXPOSE 3000

# Run the script
CMD ["node", "index.js"]
