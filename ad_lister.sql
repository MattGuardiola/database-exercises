USE ymir_matt;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       first_name VARCHAR(100) NOT NULL,
                       last_name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       password VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);



CREATE TABLE ads (
                    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    title VARCHAR(100) NOT NULL,
                    description TEXT NOT NULL,
                    user_id INT UNSIGNED NOT NULL,
                    PRIMARY KEY (id),
                    FOREIGN KEY (user_id) REFERENCES users (id)
);



CREATE TABLE categories (
                    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    category VARCHAR(100) NOT NULL,
                    PRIMARY KEY (id)
);


CREATE TABLE ads_categories (
                                ad_id INTEGER UNSIGNED NOT NULL,
                                category_id INTEGER UNSIGNED NOT NULL,
                                FOREIGN KEY (ad_id) REFERENCES ads(id),
                                FOREIGN KEY (category_id) REFERENCES categories(id)
);








