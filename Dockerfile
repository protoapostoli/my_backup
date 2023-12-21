# Use an official base image with a lightweight Linux distribution
FROM alpine:latest

# Set the working directory to /app
WORKDIR /app

# Install curl
RUN apk --no-cache add curl

# Copy the shell script into the container at /app
COPY script.sh /app/

# Make the shell script executable
RUN chmod +x /app/script.sh

# Run the shell script when the container launches
CMD ["sh", "-c", "/app/script.sh && echo 'Script completed, shutting down...' && sleep 5 && shutdown -h now"]