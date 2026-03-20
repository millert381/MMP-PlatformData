# Dev Guide

## Full Reset (IMPORTANT)
docker-compose down -v

Then:
docker-compose up --build

### What this does
- Deletes database volume
- Re-runs ALL init scripts

##S# When to use
- Testing bootstrap changes
- Schema init updates
- Extension changes

## pgAdmin
http://localhost:5050
admin@local / admin

## Backup Location
/backups/backup.sql

## Restore script

```bash
psql -h localhost -U platform platform < backups/backup.sql
```