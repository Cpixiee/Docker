#!/bin/sh

while true; do
  nc -l -p 8000 -c "/lemari"
done
