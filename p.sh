#!/bin/bash

# Generate random data
RANDOM_DATA=$(openssl rand -hex 16)

# Encrypt the random data using AES-256-CBC
ENCRYPTED_DATA=$(echo "$RANDOM_DATA" | openssl enc -aes-256-cbc -pass pass:your_secret_password -base64)

# Token is the encrypted data
TOKEN="$ENCRYPTED_DATA"

# Output the token (for demonstration purposes)
echo "Generated Token: $TOKEN"

# Example of how to decrypt token (for demonstration purposes)
DECRYPTED_DATA=$(echo "$TOKEN" | openssl enc -d -aes-256-cbc -pass pass:marz -base64)
echo "Decrypted Data: $DECRYPTED_DATA"
