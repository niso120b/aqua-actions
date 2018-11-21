#!/bin/sh -l

cat << EOT >> Dockerfile
FROM ${image}

ADD https://get.aquasec.com/microscanner /
RUN chmod +x /microscanner
RUN /microscanner ${token}
RUN echo "No vulnerabilities!"
EOT

sh -c "docker build $* --build-arg image="${IMAGE}" --no-cache ."