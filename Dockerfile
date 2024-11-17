# Use Node.js official image
FROM node:18-alpine

# Install build dependencies
RUN apk add --no-cache --virtual .build-deps \
    git \
    python3 \
    make \
    g++

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install -g truffle

# Remove build dependencies to keep image small
RUN apk del .build-deps

# Copy source files
COPY . .

# Expose port 3000
EXPOSE 3000

# Entrypoint
RUN chmod +x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]

# Start lite-server
CMD [ "npm", "run", "server" ]