#!/bin/sh

while true; do
  socat TCP-LISTEN:12345,fork EXEC:/lemari
done
