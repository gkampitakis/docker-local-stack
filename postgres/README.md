# PostgreSQL

> Exposed port **5432**

## Commands

Insert data to PostgresSQL:

```bash
\copy <table-name>(...columns) from '<filepath>' (FORMAT csv,DELIMITER ',');
```

Connect to PostgresSQL container:

```bash
docker exec -it postgres psql -U <user> -d <db-name>
```

## Notes 

`./data` folder needs to be created manually for persisting data to host.