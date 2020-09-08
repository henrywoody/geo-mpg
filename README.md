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

Run each migration by running:

```shell
psql $DB_NAME -U $DB_USER -f migrations/migration-name.sql
```
