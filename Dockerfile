# Use base image
FROM node:20

# Create app directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install
COPY . .

# Expose port and run app
EXPOSE 3000
CMD ["npm", "start"]
