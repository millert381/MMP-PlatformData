CREATE TABLE IF NOT EXISTS ai.documents (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    source TEXT,
    content TEXT,

    embedding VECTOR(1536),

    metadata JSONB,

    created_at TIMESTAMP DEFAULT NOW()
);