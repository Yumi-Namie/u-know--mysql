USE db_uknow;

/* Consultar contenidos ordenados por precio descendiente*/
SELECT * FROM contents ORDER BY current_price DESC

/* Consultar todos los contenidos ordenados por fecha de creación descendente */
SELECT * FROM contents ORDER BY update_date DESC;

/* Consultar todos los contenidos ordenados por dificultad */
SELECT * FROM contents ORDER BY difficult_level DESC;

/* Consultar todos los contenidos ordenados por valoración */
SELECT * FROM ratings ORDER BY rating DESC;

/* Consultar el saldo de un usuario registrado */
SELECT balance FROM users WHERE user_name = "nombre del usuario";
