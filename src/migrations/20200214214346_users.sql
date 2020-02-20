-- +goose Up
-- +goose StatementBegin
CREATE TABLE "users" (
  "id" uuid PRIMARY KEY unique default gen_random_uuid(),
  "first_name" varchar(10) not null,
  "last_name" varchar(15) not null,
  "username" varchar(10) unique  not null,
  "password" text,
  "phone" varchar(10) not null,
  "email" varchar(40) unique not null,
  "status" varchar(9) check (status IN('inactive', 'active')) default 'inactive',
  "is_artist" boolean default false,

  "created_at" timestamptz not null default now(),
  "updated_at" timestamptz not null default now(),
  "deletet_at" timestamptz
);

create trigger update_users_updated_at
before update on users for each row execute procedure update_updated_at_column();
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE users;
-- +goose StatementEnd
