#!/bin/bash

# Ensure the directory exists and set permissions
mkdir -p /etc/searxng
chmod -R 777 /etc/searxng

# Create the uwsgi.ini file if it doesn't exist
if [ ! -f /etc/searxng/uwsgi.ini ]; then
    touch /etc/searxng/uwsgi.ini
    chmod 644 /etc/searxng/uwsgi.ini
fi

# Start the main process
exec "$@"
