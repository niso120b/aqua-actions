#!/bin/sh -l

echo "Starting..."

sudo cat << EOT >> Dockerfile
FROM ${image}

ARG TOKEN
ADD https://get.aquasec.com/microscanner /
RUN chmod +x /microscanner
RUN /microscanner ${token}
RUN echo "No vulnerabilities!"
EOT

sudo sh -c "docker build $* --build-arg image="${IMAGE}" --no-cache ."