# Mongodb

## Commands

### Single Database

```bash
# Starting and stopping service
docker-compose up -d

docker-compose down
```

After service is running

```bash
mongo -u root -p example

#Inside shell

show dbs
```

### Replica Set

> ⚠️ Running with "--slowms 1" for debugging queries ( at what nodes getting directed )

```bash
# Starting and stopping service
docker-compose -f docker-compose-replica.yaml up -d

docker-compose -f docker-compose-replica.yaml down
```

Configuring clustering

```bash
docker-compose exec -it mongodb0 mongo

# Apply configuration
rs.initiate(rsconf);
```


```json
// Configuration
rsconf = {
   _id : "rsmongo",
   members: [
       {
           "_id": 0,
           "host": "mongodb0:27017",
           "priority": 4
       },
       {
           "_id": 1,
           "host": "mongodb1:27018",
           "priority": 2
       },
       {
           "_id": 2,
           "host": "mongodb2:27019",
           "priority": 1
       }
   ]
}
```

## Mongo Shell commands

- Create user

```
use admin

db.auth("admin",passwordPrompt())

db.createUser({"user": "user","pwd":"12345","roles":[{"role":"readWrite","db":"my-db"}]})
```

- Import collection


```bash
 mongoimport --db <db-name> --drop -c <collection-name> --uri mongodb://root:example@localhost:27017 --authenticationDatabase admin 
 <file-name-json>
```

## Notes

### MongoDB

For getting logs from the mongo you can connect to the host

```bash
# Primary Node
docker exec -it mongodb0 bash

# Tail logs
tail -f /var/log/mongodb/mongod.log | grep <collection-name>
```

### MongoClient

For connecting to replica set you can pass on connection uri

```js
new MongoClient('mongodb://localhost:27017,localhost:27018,localhost:27019/?replicaSet=rsmongo');
```

## Future Work

- Add automation for clustering. Already implemented in article

### Resources

- [Clustering Article](https://flowygo.com/en/blog/mongodb-and-docker-how-to-create-and-configure-a-replica-set/)
