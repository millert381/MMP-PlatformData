SELECT add_retention_policy('events.stream', INTERVAL '30 days');

ALTER TABLE events.stream SET (
  timescaledb.compress,
  timescaledb.compress_segmentby = 'entity_type'
);