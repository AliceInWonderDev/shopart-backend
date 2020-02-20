-- +goose Up
-- +goose StatementBegin
CREATE TABLE "product_details" (
  "id" uuid PRIMARY KEY unique default gen_random_uuid(),
  "wide" integer,
  "long" integer,
  "high" integer,
  "weight" integer
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE product_details;
-- +goose StatementEnd
