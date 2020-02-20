-- +goose Up
-- +goose StatementBegin
ALTER TABLE "cart" ADD CONSTRAINT fk_cart_1 FOREIGN KEY ("buyer_id") REFERENCES "users" ("id");

ALTER TABLE "orders" ADD CONSTRAINT fk_orders_1 FOREIGN KEY ("buyer_id") REFERENCES "users" ("id");

ALTER TABLE "promo" ADD CONSTRAINT fk_promo_1 FOREIGN KEY ("product_id") REFERENCES "products" ("id");

ALTER TABLE "product_details" ADD CONSTRAINT fk_product_details_1 FOREIGN KEY ("id") REFERENCES "products" ("product_detail_id");

ALTER TABLE "products" ADD CONSTRAINT fk_products_1 FOREIGN KEY ("user_id") REFERENCES "users" ("id");
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE "cart" DROP CONSTRAINT fk_cart_1;
ALTER TABLE "orders" DROP CONSTRAINT fk_orders_1;
ALTER TABLE "promo" DROP CONSTRAINT fk_promo_1;
ALTER TABLE "product_details" DROP CONSTRAINT fk_product_details_1;
ALTER TABLE "products" DROP CONSTRAINT fk_products_1;
-- +goose StatementEnd
