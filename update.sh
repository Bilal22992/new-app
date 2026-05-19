#!/bin/bash

docker pull YOUR_USERNAME/myapp:latest

docker stop myapp-container || true
docker rm myapp-container || true

docker run -d \
-p 8080:80 \
--name myapp-container \
bilal22992/myapp:latest
