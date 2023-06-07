CREATE DATABASE db_uknow;
USE db_uknow;

/* -------------------- */
/* ------- USER --------*/
/* -------------------- */
-- Creo la tabla users
CREATE TABLE users (
	id INT PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    user_name VARCHAR(45) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(45) NOT NULL,
    balance DECIMAL(10,2),
    register_date timestamp
);
-- Transfiro registros de usertmp para users
INSERT INTO users (id, name, user_name, password,  email, balance, register_date)
SELECT ID_user, name, user_name, password, email, balance, register_date
FROM usertmp;
-- Compruebo si esta cargado
SELECT * FROM db_uknow.users;
-- DROP TABLE db_uknow.usertmp;
-- DROP TABLE db_uknow.users;

/* ------------------------ */
/* ------- subjects --------*/
/* ------------------------ */
CREATE TABLE subjects (
	id INT PRIMARY KEY,
    subject VARCHAR(45) NOT NULL
);
-- Transfiro registros
INSERT INTO subjects (id, subject)
SELECT id_subject, subjects
FROM subjectstmp;
-- Compruebo si esta cargado
SELECT * FROM db_uknow.subjects;
-- DROP TABLE db_uknow.subjectstmp;
   
/* ------------------------ */
/* ------- contents --------*/
/* ------------------------ */
CREATE TABLE contents (
	id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    current_price DECIMAL (10,2),
    difficult_level VARCHAR(45) NOT NULL,
    update_date timestamp,
    publish_status BIT(1),
    subject_id INT NOT NULL,
    creator_id INT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES subjects (id),
    FOREIGN KEY (creator_id) REFERENCES users (id)
);
-- Transfiro registros
INSERT INTO contents (id, subject_id, creator_id, title, description, current_price, difficult_level, update_date, publish_status)
SELECT id_content, id_subject, id_creator, title, description, currentPrice, difficultLevel, updateDate, publishStatus
FROM contentstmp;

-- Compruebo si esta cargado
SELECT * FROM db_uknow.contents;
-- DROP TABLE db_uknow.contentstmp;


/* ------------------------ */
/* ------- rating ----------*/
/* ------------------------ */
CREATE TABLE ratings (
	id INT PRIMARY KEY,
    comment TEXT,
    rating INT,
    rating_date timestamp,
    content_id INT NOT NULL,
    buyer_id INT NOT NULL,
    FOREIGN KEY (content_id) REFERENCES contents (id),
    FOREIGN KEY (buyer_id) REFERENCES users (id)
);
INSERT INTO ratings (id, content_id, buyer_id, comment, rating, rating_date)
SELECT id_rating, id_content, id_buyer, comment, rating, ratingDate
FROM ratingstmp;
-- Compruebo si esta cargado
SELECT * FROM db_uknow.ratings;
-- DROP TABLE db_uknow.ratingstmp;


/* ------------------------ */
/* -------- purchase--------*/
/* ------------------------ */
CREATE TABLE purchases (
	id INT PRIMARY KEY,
    purchase_date timestamp,
    content_id INT NOT NULL,
    buyer_id INT NOT NULL,
    FOREIGN KEY (buyer_id) REFERENCES users (id),
    FOREIGN KEY (content_id) REFERENCES contents (id)
);
INSERT INTO purchases (id, purchase_date, content_id, buyer_id)
SELECT id_purchase, purchaseDate, id_content, id_buyer
FROM purchasestmp;
-- Compruebo si esta cargado
SELECT * FROM db_uknow.purchases;
-- DROP TABLE db_uknow.purchases;
-- DROP TABLE db_uknow.purchasestmp;

/* ------------------------ */
/*          chat            */
/* ------------------------ */
CREATE TABLE chat (
	id INT PRIMARY KEY,
    status BIT(1),
    purchase_id INT NOT NULL,
    buyer_id INT NOT NULL,
    creator_id INT NOT NULL,
    FOREIGN KEY (purchase_id) REFERENCES purchases (id),
    FOREIGN KEY (buyer_id) REFERENCES users (id),
    FOREIGN KEY (creator_id) REFERENCES users (id)
);
INSERT INTO chat (id, purchase_id, creator_id, buyer_id)
SELECT id_chat, id_purchase, id_creator, id_buyer
FROM chattmp;
-- Compruebo si esta cargado
SELECT COUNT(*) FROM db_uknow.chat;
-- DROP TABLE db_uknow.chat;
-- DROP TABLE db_uknow.chattmp;

/* ------------------------ */
/*        messages          */
/* ------------------------ */
CREATE TABLE messages (
	id INT PRIMARY KEY,
    message_txt TEXT,
    send_date timestamp,
    chat_id INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (chat_id) REFERENCES chat (id)
);
INSERT INTO messages (id, message_txt, send_date, user_id, chat_id)
SELECT id_message, messageText, sendDate, id_user, id_chat
FROM messagestmp;
-- Compruebo si esta cargado
SELECT * FROM db_uknow.messages;
-- DROP TABLE db_uknow.messages;
-- DROP TABLE db_uknow.messagestmp;









