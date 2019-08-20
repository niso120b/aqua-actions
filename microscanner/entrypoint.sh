#!/bin/sh -l

echo "Starting..."
echo "${IMAGE}"

sudo cat << EOT >> Dockerfile
FROM nginx

ADD https://get.aquasec.com/microscanner /
RUN chmod +x /microscanner
RUN /microscanner 123456
RUN echo "No vulnerabilities!"
EOT

sudo sh -c "docker build $* --build-arg image="${IMAGE}" --no-cache ."