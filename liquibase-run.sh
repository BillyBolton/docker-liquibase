#!/bin/bash
exec docker run --rm --network=host my-liquibase-image --defaults-file=/liquibase/changelog/liquibase.properties "$@"