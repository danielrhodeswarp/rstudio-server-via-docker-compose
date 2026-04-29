#!/usr/bin/env bash

# start RStudio Server on the already-running container
docker compose exec -it rstudioserver /usr/lib/rstudio-server/bin/rserver
