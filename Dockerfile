FROM node:12.22.12

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# RUN npm run build 

# Expose the port the app runs on
EXPOSE 8080

# Start the application
CMD ["npm", "run", "serve", "--host", "0.0.0.0"]

# run -it -p 8080:8080 --rm --name dockerize-vuejs-app-2 test-react-app