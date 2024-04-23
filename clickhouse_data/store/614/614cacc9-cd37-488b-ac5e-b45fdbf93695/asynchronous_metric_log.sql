ATTACH TABLE _ UUID 'cd0587d9-2999-455e-b3e8-c57120d5af8d'
(
    `event_date` Date,
    `event_time` DateTime,
    `event_time_microseconds` DateTime64(6),
    `metric` LowCardinality(String),
    `value` Float64
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(event_date)
ORDER BY (event_date, event_time)
SETTINGS index_granularity = 8192
