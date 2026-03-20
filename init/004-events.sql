CREATE TABLE IF NOT EXISTS events.stream (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    timestamp TIMESTAMP NOT NULL,

    source TEXT,
    event_type TEXT,
    entity_type TEXT,
    entity_id TEXT,

    payload JSONB,

    correlation_id TEXT,
    causation_id TEXT,

    created_at TIMESTAMP DEFAULT NOW()
);

SELECT create_hypertable('events.stream', 'timestamp', if_not_exists => TRUE);