# Local Services 

## Description 

Contains docker compose files for spinning up locally various services. 
Those files can be combined together for creating more complex stacks.


## Contents

- [Elasticsearch](./elasticsearch/README.md)
- Kafka and Zookeeper tbd
- [Mongodb](./mongodb/README.md)
- Postgres tbd
- Rabbitmq tdb
- Redis tbd
- Scylla tbd

<!-- Below this point doc will be updated -->

- `kafka` and `zookeeper`
- `mysql:5.6.51`

## Commands


Lint YAML files with `yamllint`

```bash
yamllint .
```

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
