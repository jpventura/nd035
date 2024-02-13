CREATE TABLE IF NOT EXISTS USERS
(
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    username  VARCHAR(20),
    salt      VARCHAR,
    password  VARCHAR,
    firstname VARCHAR(20),
    lastname  VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS CREDENTIALS
(
    id       INTEGER PRIMARY KEY AUTOINCREMENT,
    url      VARCHAR(100),
    username VARCHAR(30),
    key      VARCHAR,
    password VARCHAR,
    userid   INT,
    foreign key (userid) references USERS(id)
);

CREATE TABLE IF NOT EXISTS FILES
(
    id           INTEGER PRIMARY KEY AUTOINCREMENT,
    name         VARCHAR,
    content_type VARCHAR,
    size         VARCHAR,
    userid       INT,
    data         BLOB,
    FOREIGN KEY (userid) references USERS(id)
);

CREATE TABLE IF NOT EXISTS NOTES
(
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    title       VARCHAR(20),
    description VARCHAR(1000),
    userid      INT,
    FOREIGN KEY (userid) REFERENCES USERS(id)
);
