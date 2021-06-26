# Vehicle Portal

Tools for keeping track of your vehicles.

## Setup

### Database

Make sure the following environment variables are defined:

- `DB_NAME`
- `DB_USER`
- `DB_PASS`
- `DB_HOST`
- `DB_PORT`

Set up the database by running the `setup-db.sql` file:

```shell
psql postgres -f setup/setup-db.sql
```

#### Migrations

Run migrations with [`sql-migrate`](https://github.com/rubenv/sql-migrate).

`sql-migrate` requires a `dbconfig.yml` file to be defined. The file should look like:

```
development:
  dialect: postgres
  datasource: [connection string]
  dir: migrations/
  table: migration

```

The following command can be used to get the connection string:

```shell
echo "postgres://$DB_USER:$DB_PASS@$DB_HOST:$DB_PORT/$DB_NAME?connect_timeout=10&sslmode=disable"
```

