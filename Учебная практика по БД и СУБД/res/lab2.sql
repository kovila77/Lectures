CREATE TABLE users
(
    id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    login varchar NOT NULL,
    image_hash bytea NOT NULL
);

-- Уникальные пользователи по нижнему регистру имени пользователя
CREATE UNIQUE INDEX ON users(lower(login));

-- Добавим ограничения на логин
-- ~ - сравнить с регулярным выражением
-- * - игнорировать регистр
ALTER TABLE users ADD CHECK ( login ~* '[а-я0-9]{6,50}' );

-- ::bytea приводит к типу byte array
-- ''::bytea - не null
INSERT INTO users(login, image_hash)
VALUES ('Крот123', ''::bytea);

-- Ошибка
-- INSERT INTO users(login, image_hash)
-- VALUES ('крот123', ''::bytea);

-- Поиск по логину
-- SELECT COUNT(*)
-- FROM users
-- WHERE lower(login) = lower('тут-наше-значение');
