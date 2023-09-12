



## Prerequisites


### Install Docker
- Install [Docker Engine](https://docs.docker.com/engine/install/) (preferred) or [Docker Desktop](https://www.docker.com/products/docker-desktop/)

### Specify Configuration Properties
- You have filled in the relevant [properties/parameters](https://docs.liquibase.com/commands/home.html) in `./liquibase/sql/db/changelog/liquibase.properties`

### Adding Changelog Scripts
- Insert the changelog scripts under `./liquibase/sql/db/changelog`
<!-- TODO: Make example sub-directory -->

## Running Liquibase

### Update with Default Configurations
By default, the Liquibase instance will update the database specified by the [properties/parameters](https://docs.liquibase.com/commands/home.html) in `./liquibase/sql/db/changelog/liquibase.properties` with DDL scripts in the same directory (`./liquibase/sql/db/changelog`).

To run an update with these default configurations:

Via terminal: `sh liquibase-run.sh`

### Any Command with Default Configurations

To run an any [Liquibase command](https://docs.liquibase.com/commands/home.html) on the database specified by the [properties/parameters](https://docs.liquibase.com/commands/home.html) in `./liquibase/sql/db/changelog/liquibase.properties`

Via terminal: `sh liquibase-run.sh <LIQUIBASE COMMAND>`

Example: `sh liquibase-run.sh status`

### Any Command with Overridden Configurations

To override any of the [properties/parameters](https://docs.liquibase.com/commands/home.html) with a CLI flag:

Via terminal: `sh liquibase-run.sh <LIQUIBASE COMMAND> <PARAMETER_1> <PARAMETER_2> <PARAMETER_X>`

Example: `sh liquibase-run.sh update --defaults-file=/liquibase/changelog/liquibase.properties`
