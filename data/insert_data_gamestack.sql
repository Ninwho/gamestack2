INSERT INTO games (game_id,name,editor,platform,date)
VALUES  (1, 'Cyberpunk 2077', 'CD Projekt', 'PS5', TO_DATE('2020', 'YYYY')),
        (2, 'Mass Effect', 'BioWare', 'PC', TO_DATE('2012', 'YYYY')),
        (3, 'Deathloop', 'Arkane Studios', 'PS5', TO_DATE('2021', 'YYYY')),
        (4, 'Returnal', 'Housemarque', 'PS5', TO_DATE('2021', 'YYYY')),
        (5, 'Assassins Creed Valhalla', 'Ubisoft', 'PS5', TO_DATE('2020', 'YYYY')),
        (6, 'Grand Theft Auto V', 'Rockstar Games', 'PS3', TO_DATE('2008', 'YYYY')),
        (7, 'The Witcher 3: Wild Hunt', 'CD Projekt', 'PC', TO_DATE('2015', 'YYYY')),
        (8, 'Red Dead Redemption', 'Rockstar Games', 'PS3', TO_DATE('2010', 'YYYY')),
        (9, 'Overwatch', 'Blizzard', 'PS4', TO_DATE('2016', 'YYYY')),
        (10, 'The Legend of Zelda', 'Nintendo', 'Switch', TO_DATE('2017', 'YYYY')),
        (11, 'Detroit', 'Quantic Dream', 'PS4', TO_DATE('2018', 'YYYY')),
        (12, 'Demons Souls', 'SIE Japan Studio', 'PS3', TO_DATE('2017', 'YYYY')),
        (13, 'Resident Evil Village', 'Capcom', 'PS5', TO_DATE('2021', 'YYYY')),
        (14, 'Ratchet & Clank: Rift Apart', 'Insomniac Games', 'PS5', TO_DATE('2021', 'YYYY')),
        (15, 'Spider-Man', 'Insomniac Games', 'PS5', TO_DATE('2020', 'YYYY')),
        (16, 'The Last of Us', 'Naughty Dog', 'PS4', TO_DATE('2014', 'YYYY')),
        (17, 'God of War', 'SIE Santa Monica', 'PS4', TO_DATE('2018', 'YYYY')),
        (18, 'Ghost of Tsushima', 'Sucker Punch', 'PS4', TO_DATE('2020', 'YYYY')),
        (19, 'Days Gone', 'Bend Studio', 'PS4', TO_DATE('2019', 'YYYY')),
        (20, 'Horizon', 'Guerilla Games', 'PS4', TO_DATE('2017', 'YYYY'));

INSERT INTO users (user_id,username,user_bio)
VALUES  (1, 'Ninwho', 'Test Bio 1'),
        (2, 'Loki', 'Test Bio 2'),
        (3, 'Darkmox', 'Test Bio 3'),
        (4, 'Rithus', 'Test Bio 4'),
        (5, 'Antans', 'Test Bio 5'),
        (6, 'Rover', 'Test Bio 6'),
        (7, 'Mamba', 'Test Bio 7'),
        (8, 'Chine', 'Test Bio 8'),
        (9, 'Atraz', 'Test Bio 9'),
        (10, 'Circe', 'Test Bio 10'),
        (11, 'Muadib', 'Test Bio 11');

INSERT INTO user_games (user_id,game_id)
VALUES  (1,14),
        (2,9),
        (3,7),
        (4,19),
        (5,4),
        (6,12),
        (7,8),
        (8,20),
        (9,10),
        (10,1),
        (11,5);

select setval('games_game_id_seq',COALESCE((select max(game_id) + 1 from games), 1));
select setval('users_user_id_seq',COALESCE((select max(user_id) + 1 from users), 1));
