CREATE INDEX IF NOT EXISTS idx_events_entity
ON events.stream (entity_type, entity_id);

CREATE INDEX IF NOT EXISTS idx_events_type
ON events.stream (event_type);

CREATE INDEX IF NOT EXISTS idx_events_time
ON events.stream (timestamp DESC);