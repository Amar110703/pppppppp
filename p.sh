#!/bin/bash

# Set token sebagai variabel environment (gunakan perintah 'export' untuk variabel environment)
export EXPECTED_HASH="dfb62b8af92a6e72c9949ae1b2f8f9a1f727bfc24ed6b69f642c36e22145a0c1"

echo "Masukkan token:"
read token

# Meng-hash token yang dimasukkan oleh pengguna
hashed_token=$(echo -n "$token" | sha256sum | awk '{print $1}')

# Membandingkan hash yang dihasilkan dengan hash yang diharapkan
if [ "$hashed_token" = "$EXPECTED_HASH" ]; then
    echo "Token valid. Akses diberikan."
    # Tambahkan perintah atau skrip yang ingin dijalankan jika token valid di sini
else
    echo "Token tidak valid. Akses ditolak."
fi

# Hapus variabel environment setelah digunakan (opsional)
unset EXPECTED_HASH
