My personal [folding@home](https://foldingathome.org/) Docker setup. The main differences between this setup and the official one are:
1. This container installs a crontab which can be used to adjust the power at certain times of the day
2. This container is automatically configured to work with https://github.com/nginx-proxy/nginx-proxy and https://github.com/nginx-proxy/acme-companion.

## Prerequisites
In order to use these containers you must have a running nginx-proxy container attached to an existing Docker network. Optionally, you may also have an acme-companion instance running, which will automatically configure HTTPS for Nextcloud. A working example of each can be found here.

## Setup
1. Clone the repository.
2. Run `cp .env.sample .env` and update `.env` with your preferred settings. Be sure to set NGINX_PROXY_NETWORK to the name of the Docker network that your nginx-proxy instance is running under.
3. Run `cp crontab.sample crontab` and update with your preferred jobs, if any.
4. Run `docker-compose up -d` to build and run the container.
