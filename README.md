# My Home - Pi-hole 🥧🕳️

[![GitHub Actions](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2FIanStorm%2Fmy-home-pihole%2Fbadge%3Fref%3Dmain&style=flat&label=build&logo=none)](https://actions-badge.atrox.dev/IanStorm/my-home-pihole/goto?ref=main)
[![Docker Pulls](https://img.shields.io/docker/pulls/ianstorm/my-home-pihole)](https://hub.docker.com/r/ianstorm/my-home-pihole)
[![Docker Stars](https://img.shields.io/docker/stars/ianstorm/my-home-pihole)](https://hub.docker.com/r/ianstorm/my-home-pihole)

Garage project for **private purposes**.
Provides a DNS sinkhole with custom configuration for my home.

**🐳 Make sure you have installed *Docker*.**

## How to use in "production"? 👨‍💼 👩‍💼

1. Follow ["How to get a pre-built Docker image?"](#how-to-get-a-pre-built-docker-image-☁️)
2. Start a Docker instance:
```sh
docker run \
		--rm \
		-t \
		-p 53:53/tcp -p 53:53/udp \
		-p 80:80 \
		--restart=unless-stopped
		ianstorm/my-home-pihole:latest
```


## How to develop? 👨‍💻 👩‍💻

Make sure you have installed *Visual Studio Code*.

1. Clone this repository.
2. `cd` inside the cloned folder.
2. Build the Docker image: Run the vscode task `build`.


## Appendix


### How to get a pre-built Docker image? ☁️

Get the latest Docker image from Docker Hub:
```sh
docker pull ianstorm/my-home-pihole:latest
```


### Sources 📙

* [Official Pi-hole website](https://pi-hole.net/)
* [GitHub: Pi-hole](https://github.com/pi-hole/pi-hole#readme)
* [Docker Hub: Pi-hole](https://hub.docker.com/r/pihole/pihole)
