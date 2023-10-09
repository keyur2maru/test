# Use the official lightweight Node.js 14 image.
FROM --platform=linux/amd64 node:bookworm-slim

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json for installing npm packages
COPY package*.json ./

# Install the npm packages
RUN npm install

# Debug: List files in the current directory
RUN ls -al

# Copy the rest of the code
COPY . .

# Debug: List files in the current directory
RUN ls -al

# Command to run the application
CMD ["npm", "start"]
