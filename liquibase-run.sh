#!/bin/bash

# Function to check if MySQL container is running
is_mysql_running() {
  sudo docker compose -f ./demo-setup/docker-compose.yml ps -q library-books &> /dev/null
  return $?
}

# Set liquibase command to update by default if $@ is empty
if [ -z "$@" ]; then
  args="update"
else
  args="$@"
fi

# Check if MySQL container is running; if not, start it
if ! is_mysql_running; then
  echo "MySQL container is not running. Starting it..."
  sudo docker compose -f ./demo-setup/docker-compose.yml up -d library-books
  if [ $? -ne 0 ]; then
    echo "Failed to start MySQL container."
    exit 1
  fi
fi

sudo docker build -t my-liquibase-image -f Dockerfile.liquibase .
if [ $? -ne 0 ]; then
  echo "Failed to build Docker image."
  exit 1
fi

sudo docker run --rm --network=host my-liquibase-image --defaults-file=/liquibase/changelog/liquibase.properties $args
if [ $? -ne 0 ]; then
  echo "Failed to run Docker container."
  exit 1
fi
