SELECT column_name
FROM information_schema.columns
WHERE table_schema = 'input'
  AND table_name   = 'rf';
