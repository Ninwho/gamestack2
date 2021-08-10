CREATE TABLE users
(
    user_id       SERIAL PRIMARY KEY,
    username      varchar(30)   NOT NULL,
    user_bio      varchar(2000) NOT NULL
);

CREATE TABLE games
(
    game_id       SERIAL PRIMARY KEY,
    name          varchar(30)   NOT NULL,
    editor        varchar(30)   NOT NULL,
    platform      varchar(10)   NOT NULL,
    date          date          NOT NULL
);

CREATE TABLE user_games
(
    user_id integer NOT NULL REFERENCES users (user_id),
    game_id integer NOT NULL REFERENCES games (game_id)
);
