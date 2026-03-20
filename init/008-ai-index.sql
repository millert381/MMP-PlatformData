CREATE INDEX IF NOT EXISTS idx_ai_embedding
ON ai.documents
USING ivfflat (embedding vector_cosine_ops)
WITH (lists = 100);