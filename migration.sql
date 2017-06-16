USE adlister_db;


DROP TABLE IF EXISTS ads_categories;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;


CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL UNIQUE,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(240) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);

CREATE TABLE categories(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(240) NOT NULL,
    PRIMARY KEY (id)

);

CREATE TABLE ads_categories(
    category_id INT UNSIGNED NOT NULL,
    ads_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (category_id, ads_id),
    FOREIGN KEY (category_id) REFERENCES categories(id),
    FOREIGN KEY (ads_id) REFERENCES ads(id)
    ON DELETE CASCADE
);