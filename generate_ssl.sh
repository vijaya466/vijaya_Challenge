#!/bin/bash

# Check if domain name argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain_name>"
    exit 1
fi

# Directory to store SSL files
SSL_DIR="ssl"

# Create SSL directory if it doesn't exist
mkdir -p "$SSL_DIR"

# Generate private key
openssl genrsa -out "$SSL_DIR/server.key" 2048

# Generate CSR (Certificate Signing Request)
openssl req -new -key "$SSL_DIR/server.key" -out "$SSL_DIR/server.csr" -subj "/CN=$1"

# Generate self-signed certificate
openssl x509 -req -days 365 -in "$SSL_DIR/server.csr" -signkey "$SSL_DIR/server.key" -out "$SSL_DIR/server.crt"

echo "SSL certificate and private key generated successfully for domain '$1' in '$SSL_DIR' directory."
