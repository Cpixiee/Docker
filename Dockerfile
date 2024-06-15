# Use a base image with netcat installed
FROM alpine:latest

# Install necessary packages
RUN apk --no-cache add nc

# Copy the ELF file and flag.txt into the container
COPY chall /app/chall
COPY flag.txt /app/flag.txt

# Make the ELF file executable
RUN chmod +x /app/chall

# Expose the port that netcat will listen on
EXPOSE 9999

# Start netcat to serve the ELF file
CMD ["sh", "-c", "while true; do nc -l -p 9999 -e /app/chall; done"]
