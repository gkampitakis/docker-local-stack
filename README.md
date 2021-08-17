# Local Services 

## Description 

Contains a docker compose file for spinning up locally

- `mongodb`
- `kafka` and `zookeeper`
- `mysql:5.6.51`

## Commands

Start docker compose command

```bash

export HOST_IP=$(ifconfig | grep -E "([0-9]{1,3}\\.){3}[0-9]{1,3}" | grep -v 127.0.0.1 | awk '{ print $2 }' | cut -f2 -d: | head -n1) && docker-compose pull -q && docker-compose up -d && sleep 30

```

Stop docker compose command

```bash

docker-compose down

```

Also if you want to start only one individual service you can run

```bash

docker-compose run <service-name>

```