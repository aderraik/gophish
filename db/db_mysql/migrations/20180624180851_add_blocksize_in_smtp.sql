
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
-- Add the block size for each SMTP entry, could be NULL
ALTER TABLE smtp ADD COLUMN "block_size" integer;

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back

ALTER TABLE smtp DROP COLUMN "block_size";
