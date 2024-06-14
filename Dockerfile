# Gunakan image dasar yang ringan dengan nc (Alpine Linux)
FROM alpine:latest

# Instal netcat
RUN apk add --no-cache netcat-openbsd

# Salin file ELF ke dalam container
COPY lemari /lemari

# Buat file dapat dieksekusi
RUN chmod +x /lemari

# Buat script untuk menjalankan file
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Jalankan script entrypoint
CMD ["/entrypoint.sh"]
