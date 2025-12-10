# Use Node.js official image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy files to container
COPY . .

# Install dependencies
RUN npm install

# Expose application port
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
