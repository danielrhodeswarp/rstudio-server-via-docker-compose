# rstudio-server-via-docker-compose
Simple way to use RStudio Server via Docker Compose. Installs automatically.

## Steps
- `docker compose build`
- `docker compose up` (will tail the log file)
- (in a different terminal) `./start_rstudio_server.sh`
- (in a browser) `http://localhost:8080`
- sign in with 'ubuntu' username and 'ubuntu' password
- the home folder for 'ubuntu' (where RStudio will save project files and plot exports etc) is on your host machine and it's `working_folder`
