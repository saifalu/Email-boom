# Use the official Node.js 18 image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application
COPY . .

# Expose the application port
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]