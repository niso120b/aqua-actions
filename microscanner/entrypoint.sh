#!/bin/sh -l

echo "Starting..."

sh -c "docker build $* --build-arg image="${IMAGE}" --no-cache ."