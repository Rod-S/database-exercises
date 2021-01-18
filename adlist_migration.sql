use adlist;

drop table if exists ad_category;
drop table if exists category;
drop table if exists ad;
drop table if exists users;

create table users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       email VARCHAR(30) NOT NULL,
                       pass VARCHAR(30) NOT NULL,
                       PRIMARY KEY (id)
);

create table ad (
                    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    user_id INT UNSIGNED NOT NULL,
                    title VARCHAR(255) NOT NULL,
                    description text,
                    category VARCHAR(255),
                    primary key (id),
                    foreign key (user_id) references users (id)
);

create table category (
                          id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                          name VARCHAR(255) NOT NULL,
                          primary key (id)
);

create table ad_category (
                     ad_id INT UNSIGNED NOT NULL,
                     cat_id INT UNSIGNED NOT NULL,
                     foreign key (ad_id) references ad (id),
                     foreign key (cat_id) references category (id)
);


# create table users (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     email VARCHAR(30) NOT NULL,
#     pass VARCHAR(30) NOT NULL,
#     PRIMARY KEY (id)
# );
#
# create table ad (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     title VARCHAR(255) NOT NULL,
#     description text,
#     user_id INT UNSIGNED DEFAULT NULL,
#     primary key (id),
#     foreign key (user_id) references users (id)
#     );
#
# create table ad_category (
#     id INT UNSIGNED NOT NULL,
#     ad_id INT UNSIGNED NOT NULL,
#     foreign key (ad_id) references ad (id)
#                          foreign key ()
# );
#
# create table category (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     name VARCHAR(255) NOT NULL,
#     primary key (id),
#     foreign key (id) references ad_category (ad_id)
# );