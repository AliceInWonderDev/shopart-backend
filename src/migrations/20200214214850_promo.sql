-- +goose Up
-- +goose StatementBegin
CREATE TABLE "promo" (
  "product_id" uuid,
  "discount" varchar,
  "active" boolean
);

create index ix_promo_product_id
on promo(product_id);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE promo
-- +goose StatementEnd
