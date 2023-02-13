# Use the official Caddy Docker image as the base image
FROM caddy:2.6.3-alpine

# Copy the website files to the container
COPY ./app /srv

# Copy the Caddyfile to the container
COPY ./Caddyfile /etc/caddy/Caddyfile

# Expose port 80 for incoming traffic
EXPOSE 80

# Use the default Caddy startup command to run the web server
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
