CREATE TABLE "user" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
);

CREATE TABLE session (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES "user"(id)
);

CREATE TABLE currency (
  id SERIAL,
  code VARCHAR(2) UNIQUE
);

CREATE TABLE account (
  id SERIAL PRIMARY KEY,
  balance DECIMAL(15, 2),
  currency_id INT REFERENCES "currency"(id)
);

CREATE TABLE user_account (
  user_id INT REFERENCES "user"(id),
  account_id INT REFERENCES account(id),
  UNIQUE(user_id, account_id)
);

CREATE TABLE statement (
  id SERIAL PRIMARY KEY,
  start_date date,
  end_date date,
);

CREATE TABLE account_statement (
  id SERIAL PRIMARY KEY,
  account_id INT REFERENCES account(id),
  statement_id INT REFERENCES statement(id),
  UNIQUE(account_id, statement_id)
);

CREATE TABLE transaction (
  id SERIAL PRIMARY KEY,
  from_account_id INT INDEX REFERENCES account(id),
  to_account_id INT INDEX  REFERENCES account(id),
  exchange_rate decimal(15, 2)
);


