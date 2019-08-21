#!/bin/sh
#set -e

#echo "Starting..."

#touch Dockerfile
#cat >> "Dockerfile" <<-EOF
#FROM ${image}

#ADD https://get.aquasec.com/microscanner /
#RUN chmod +x /microscanner
#RUN /microscanner ${token}
#RUN echo "No vulnerabilities!"
#EOF

# sh -c "docker build $* --build-arg image="${IMAGE}" --no-cache ."