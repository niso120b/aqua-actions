FROM docker:stable

LABEL "name"="Aqua MicroScanner Action"
LABEL "maintainer"="Aqua Security <support@aquasec.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Aqua MicroScanner Action for Docker Scanning"
LABEL "com.github.actions.description"="Aqua Security's MicroScanner lets you check your container images for vulnerabilities"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="yellow"
COPY README.md /

# RUN apk update \
#  && (apk info | xargs -n1 -I{} apk --quiet add {}-doc); true \
#  && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
