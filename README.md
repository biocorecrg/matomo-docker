# matomo-docker
Modified Docker for Matomo visit analytics tool

```
docker build -t matomo-biocore .

docker run --restart=unless-stopped -d -p 9002:80 --network=biocore --name matomo-biocore --link mariadb-biocore:db --env MATOMO_DATABASE_TABLES_PREFIX=piwik_ --env MATOMO_DATABASE_USERNAME=piwik --env MATOMO_DATABASE_PASSWORD=xxx --env MATOMO_DATABASE_DBNAME=piwik matomo-biocore
```
