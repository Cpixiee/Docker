# Gunakan gambar dasar dengan Debian
FROM debian:latest

# Instal paket yang diperlukan
RUN apt-get update && apt-get install -y \
    netcat-traditional \
    && rm -rf /var/lib/apt/lists/*

# Salin file ELF ke dalam kontainer
COPY secureserver /secureserver

# Buat file ELF dapat dieksekusi
RUN chmod +x /secureserver

# Buka port yang akan digunakan aplikasi
EXPOSE 8005

# Jalankan file ELF menggunakan netcat dan catat koneksi
CMD ["sh", "-c", "while :; do echo 'Listening on port 8005'; nc -lvvp 8005 -e /secureserver; done"]
