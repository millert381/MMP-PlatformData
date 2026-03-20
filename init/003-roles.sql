CREATE ROLE platform_app WITH LOGIN PASSWORD 'platform_app';

GRANT USAGE ON SCHEMA platform, events, ai, logs TO platform_app;
GRANT CREATE ON SCHEMA platform, events, ai, logs TO platform_app;

ALTER DEFAULT PRIVILEGES IN SCHEMA events GRANT ALL ON TABLES TO platform_app;
ALTER DEFAULT PRIVILEGES IN SCHEMA ai GRANT ALL ON TABLES TO platform_app;