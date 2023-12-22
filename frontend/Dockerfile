FROM node:latest

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that your React app will run on during development
EXPOSE 3000

# Set environment variable for the React app
ENV REACT_APP_SERVER_URL=http://localhost:3001

# Create a non-root user
RUN groupadd -r app && useradd -r -g app -m app

# Set ownership of the app directory to the non-root user
RUN chown -R app:app /app

# Switch to the non-root user
USER app

# Start the development server
CMD ["npm", "start"]
