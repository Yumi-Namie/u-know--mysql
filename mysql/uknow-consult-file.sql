USE db_uknow

-- EXAMPLES QUERIES

-- SHOW USERS
SELECT * FROM users

-- ORDER MESSAGES FROM OLDEST TO NEWEST
SELECT * FROM messages
ORDER BY send_date

-- SELECT ACTIVE CHATS
SELECT * FROM chat WHERE status = '1'

-- SELECT INACTIVE CHATS
SELECT * FROM chat WHERE status = '0'

/* Consultar contenidos ordenados por precio descendiente*/
SELECT * FROM contents ORDER BY current_price DESC

/* Consultar todos los contenidos ordenados por fecha de creación descendente */
SELECT * FROM contents ORDER BY update_date DESC;

/* Consultar todos los contenidos ordenados por dificultad */
SELECT * FROM contents ORDER BY difficult_level DESC;

/* Consultar todos los contenidos ordenados por valoración */
SELECT * FROM ratings ORDER BY rating DESC;

/* Consultar el saldo de un usuario registrado */
SELECT balance FROM users WHERE user_name = "user_name_1";

/* Consultar los contenidos creados por un usuario */
SELECT * FROM contents WHERE creator_id = 1010;

