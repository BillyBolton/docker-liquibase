#!/bin/bash
exec docker build -t my-liquibase-image -f Dockerfile.liquibase .
exec docker run --rm --network=host my-liquibase-image --defaults-file=/liquibase/changelog/liquibase.properties "$@"