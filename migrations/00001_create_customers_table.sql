-- +goose Up

DROP TABLE IF EXISTS chatrooms;
CREATE TABLE chatrooms (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
) ENGINE=INNODB;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  phone CHAR(12) NOT NULL PRIMARY KEY,
  firstname VARCHAR(64) NOT NULL,
  lastname VARCHAR(64) NOT NULL,
  chatroom INT UNSIGNED NOT NULL,
  registration TIMESTAMP NOT NULL,
  FOREIGN KEY (chatroom)
    REFERENCES chatrooms(id)
    ON DELETE CASCADE
) ENGINE=INNODB;

-- +goose Down
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS chatrooms;
