#!/bin/bash
set -e

# Run the desired command before starting Liquibase
docker run -e INSTALL_MYSQL=true liquibase/liquibase update

# Start Liquibase service
exec "$@"
