CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS test (
  id UUID NOT NULL DEFAULT uuid_generate_v4() PRIMARY KEY,
  test VARCHAR
);