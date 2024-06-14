# Gunakan image dasar yang ringan dengan socat (Alpine Linux)
FROM alpine:latest

# Instal socat
RUN apk add --no-cache socat

# Salin file ELF ke dalam container
COPY lemari /lemari

# Buat file dapat dieksekusi
RUN chmod +x /lemari

# Buat script untuk menjalankan file
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Jalankan script entrypoint
CMD ["/entrypoint.sh"]
