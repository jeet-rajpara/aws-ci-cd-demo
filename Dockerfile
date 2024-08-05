# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the application code into the container
COPY . .

# Expose the port the application will be listening on
EXPOSE 3000

# Run the Node.js application
CMD ["node", "index.js"]
