#!/bin/sh -l

cat << EOT >> Dockerfile
FROM ${IMAGE}

ADD https://get.aquasec.com/microscanner /
RUN chmod +x /microscanner
RUN /microscanner ${MICROSCANNER_TOKEB}
RUN echo "No vulnerabilities!"
EOT

sh -c "docker build $* --build-arg image="${IMAGE}" --no-cache ."