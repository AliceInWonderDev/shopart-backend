-- +goose Up
-- +goose StatementBegin
CREATE TABLE "cart" (
  "buyer_id" uuid not null,
  "product_id" uuid not null,
  "sold" boolean,

  "created_at" timestamptz not null default now(),
  "updated_at" timestamptz not null default now(),
  "deletet_at" timestamptz
);

create index ix_cart_product_id
on cart(product_id);

create index ix_cart_buyer_id
on cart(buyer_id);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE cart
-- +goose StatementEnd
