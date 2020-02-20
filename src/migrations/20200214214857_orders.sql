-- +goose Up
-- +goose StatementBegin
CREATE TABLE "orders" (
  "id" uuid PRIMARY KEY unique default gen_random_uuid(),
  "buyer_id" uuid not null,
  "product" uuid not null,
  "total" decimal,

  "created_at" timestamptz not null default now(),
  "updated_at" timestamptz not null default now(),
  "deletet_at" timestamptz
);

create trigger update_orders_updated_at
before update on orders for each row execute procedure update_updated_at_column();
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE orders;
-- +goose StatementEnd
