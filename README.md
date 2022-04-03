My personal [folding@home](https://foldingathome.org/) Docker setup. The main difference between this setup and the official one is that this installs a crontab, which I am using to adjust the power at certain times of the day.

## Setup
1. Clone the repository.
2. Run `cp .env.sample .env` and update with your preferred settings.
3. Run `cp crontab.sample crontab` and update with your preferred jobs, if any.
4. Run `docker-compose up -d` to build and run the container.
