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


#For a given ad, what is the email address of the user that created it?
select u.email
from users u
inner join  ads a on u.id = a.user_id
where a.id = 2;

# For a given ad, what category, or categories, does it belong to?
select c.category
from categories c
inner join ads_categories ac on c.id = ac.category_id
where ac.ad_id = 2;

# For a given category, show all the ads that are in that category.
select a.*
from ads a
inner join ads_categories ac on a.id = ac.ad_id
inner join categories c on ac.category_id = c.id
where c.category like '%pets%';

# For a given user, show all the ads they have posted.
select a.*
from ads as a
where a.user_id = 3;







