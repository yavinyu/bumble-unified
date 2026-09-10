CREATE TABLE IF NOT EXISTS guild_member_level_history (
    id          SERIAL PRIMARY KEY,
    guild_key   TEXT NOT NULL,
    ign         CITEXT NOT NULL,
    uuid        TEXT,
    level       DOUBLE PRECISION,
    recorded_at BIGINT NOT NULL
);

CREATE INDEX IF NOT EXISTS guild_member_level_history_lookup
    ON guild_member_level_history (guild_key, ign, recorded_at);
