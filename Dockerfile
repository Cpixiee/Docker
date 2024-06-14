# Gunakan image dasar yang ringan dengan nc (Alpine Linux)
FROM alpine:latest

# Instal netcat
RUN apk add --no-cache netcat-openbsd

# Salin file ELF ke dalam container
COPY lemari /lemari

# Buat file dapat dieksekusi
RUN chmod +x /lemari

# Jalankan nc untuk menyajikan file
CMD ["nc", "-lkp", "12345", "-e", "/lemari"]
