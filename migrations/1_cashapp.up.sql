CREATE TABLE "user" (
  user_id int,
  name varchar(255),
  PRIMARY KEY(user_id)
);

CREATE TABLE session (
  session_id int,
  user_id int,
  PRIMARY KEY(session_id),
  FOREIGN KEY(user_id) REFERENCES "user"(user_id)
);

CREATE TABLE account (
  account_id int,
  balance decimal(15, 2),
  PRIMARY KEY(account_id)
);

CREATE TABLE user_account (
  user_id int,
  account_id int,
  FOREIGN KEY(user_id) REFERENCES "user"(user_id),
  FOREIGN KEY(account_id) REFERENCES account(account_id)
);

CREATE TABLE statement (
  statement_id int,
  account_id int,
  PRIMARY KEY(statement_id),
  FOREIGN KEY(account_id) REFERENCES account(account_id)
);

CREATE TABLE account_statement (
  account_id int,
  statement_id int,
  start_date date,
  end_date date,
  FOREIGN KEY(account_id) REFERENCES account(account_id),
  FOREIGN KEY(statement_id) REFERENCES statement(statement_id)
);

CREATE TABLE transaction (
  from_account_id int,
  to_account_id int,
  exchange_rate decimal(15, 2),
  FOREIGN KEY(from_account_id) REFERENCES account(account_id),
  FOREIGN KEY(to_account_id) REFERENCES account(account_id)
);

CREATE TABLE currency (
  account_id int,
  FOREIGN KEY(account_id) REFERENCES account(account_id)
);

