#!/bin/sh -l

echo "Starting..."

sudo cat << EOT >> Dockerfile
FROM ${IMAGE}

ADD https://get.aquasec.com/microscanner /
RUN chmod +x /microscanner
RUN /microscanner ${MICROSCANNER_TOKEN}
RUN echo "No vulnerabilities!"
EOT

sudo sh -c "docker build $* --build-arg image="${IMAGE}" --no-cache ."