#!/bin/bash

# Set token sebagai variabel environment (gunakan perintah 'export' untuk variabel environment)
export EXPECTED_HASH="c7216c2b731d91e9d361e3f71c0e8d9f562c4ef6b29c683d52a9f4a91e95e376"

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
