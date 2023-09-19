#!/bin/bash




docker build -t my-liquibase-image -f Dockerfile.liquibase .
if [ $? -ne 0 ]; then
  echo "Failed to build Docker image."
  exit 1
fi

docker run --rm --network=host my-liquibase-image --defaults-file=/liquibase/changelog/liquibase.properties "$@"
if [ $? -ne 0 ]; then
  echo "Failed to run Docker container."
  exit 1
fi
