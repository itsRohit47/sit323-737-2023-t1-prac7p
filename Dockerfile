# Use a lightweight Node.js version as the base image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the application code
COPY . .

# Build the production version of the application
RUN npm run build

# Expose port 80 for the application
EXPOSE 80

# Define the command to start the application
CMD ["npm", "start"]
