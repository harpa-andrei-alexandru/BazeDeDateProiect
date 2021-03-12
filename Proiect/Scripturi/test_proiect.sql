-- Afisare tabela user_champion
SELECT l.name, c.champion_name
    FROM lol_user l, champion c, user_champion uc
    WHERE l.user_id=uc.user_id and c.champion_id=uc.champion_id
    ORDER BY uc.user_id;

-- Afisare tabela user_skin
SELECT l.name, c.champion_name, s.skin_name
    FROM lol_user l, champion c, skin s, user_skin us
    WHERE l.user_id=us.user_id and c.champion_id=us.champion_id and s.skin_id=us.skin_id
    ORDER BY us.user_id;
    
-- Update detalii campioni
UPDATE champion c
SET c.armor=35, c.health=625
WHERE c.champion_name='Garen';

UPDATE champion
            SET health={0}, armor={1}, attack_damage={2}, magic_resist={3}
            WHERE champion_name='{4}'

UPDATE champion c
SET c.attack_damage=55, c.health=493.2
WHERE c.champion_name='Lux';

-- Update User email
UPDATE lol_user lu
SET lu.email='new_email_user4@yahoo.com'
WHERE lu.name='User4';

-- Ce skin-uri are campionul Riven
SELECT s.skin_name 
FROM skin s, champion c
WHERE c.champion_name='Riven' and c.champion_id=s.champion_id;

-- Care este cel mai nou skin
SELECT s.skin_name, s.release_date
FROM skin s
WHERE s.release_date = (SELECT max(release_date) FROM skin);

-- Adaugare TFT rank la tabela lol_user
ALTER TABLE lol_user
ADD rank_tft varchar(2);

-- TESTARE CONSTRANGERI LOL_USER
-- adaugare User cu un nume deja existent
INSERT INTO lol_user(name, email, summoner_name, lvl, club_id) 
    VALUES('User5', 'user5_test@gmail.com', 'User505', 15,(SELECT club_id FROM club WHERE name='Club5'));
  
-- adaugare User cu adresa email deja existenta  
INSERT INTO lol_user(name, email, summoner_name, lvl, club_id) 
    VALUES('User5Test', 'user5@gmail.com', 'User505', 15,(SELECT club_id FROM club WHERE name='Club5'));
    
-- adaugare User cu adresa email invalida
INSERT INTO lol_user(name, email, summoner_name, lvl, club_id) 
    VALUES('User5Test', 'user5_test-gmail.com', 'User505', 15,(SELECT club_id FROM club WHERE name='Club5'));
    
-- adaugare User cu nume prea mic
INSERT INTO lol_user(name, email, summoner_name, lvl, club_id) 
    VALUES('Use', 'use@gmail.com', 'User505', 15,(SELECT club_id FROM club WHERE name='Club5'));

-- adaugare User cu summoner_name prea mic
INSERT INTO lol_user(name, email, summoner_name, lvl, club_id) 
    VALUES('User6', 'user6@gmail.com', 'Us', 15,(SELECT club_id FROM club WHERE name='Club5'));
    
-- adaugare User cu lvl < 0
INSERT INTO lol_user(name, email, summoner_name, lvl, club_id) 
    VALUES('User66', 'user65@gmail.com', 'User6', -5,(SELECT club_id FROM club WHERE name='Club5'));

-- TESTARE CONSTRANGERI CLUB    
-- adaugare Club cu nume deja existent
INSERT INTO club(name, create_date, number_of_members) VALUES('Club5', TO_DATE('12.07.2016', 'DD.MM.YYYY'), 50);

-- adaugare Club cu nume prea mic
INSERT INTO club(name, create_date, number_of_members) VALUES('Cl6', TO_DATE('13.01.2019', 'DD.MM.YYYY'), 50);

-- adaugare Club cu data crearii mai mare decat SYSDATE
INSERT INTO club(name, create_date, number_of_members) VALUES('Club6', TO_DATE('02.07.2021', 'DD.MM.YYYY'), 50);

-- adaugare Club cu numar de membri = 0
INSERT INTO club(name, create_date, number_of_members) VALUES('Club6', TO_DATE('02.07.2019', 'DD.MM.YYYY'), 0);

-- TESTARE CONSTRANGERI CHAMPION
-- adaugare campion cu nume prea scurt
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Ra', 790, 3150, TO_DATE('19.10.2010', 'DD.MM.YYYY'), 490, 18.72, 30, 53.54);
        
-- adaugare campion deja existent
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Lux', 790, 3150, TO_DATE('19.10.2010', 'DD.MM.YYYY'), 490, 18.72, 30, 53.54);

-- adaugare campion cu price_rp in afara valorilor posibile
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Kled', 333, 3150, TO_DATE('19.10.2010', 'DD.MM.YYYY'), 490, 18.72, 30, 53.54);
        
-- adaugare campion cu price_blues_essence in afara valorilor posibile
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Kled', 790, 3155, TO_DATE('19.10.2010', 'DD.MM.YYYY'), 490, 18.72, 30, 53.54);

-- adaugare campion cu release_date mai mare decat SYSDATE
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Kled', 790, 3150, TO_DATE('19.10.2021', 'DD.MM.YYYY'), 490, 18.72, 30, 53.54);
        
-- TESTARE CONSTRANGERI SKIN
-- adaugare skin cu nume prea scurt
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Te', 'Epic', 1050, 1350, TO_DATE('27.10.2020', 'DD.MM.YYYY'), (SELECT champion_id FROM champion WHERE champion_name='Teemo'));
        
-- adaugare skin deja existent
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Astronaut Teemo', 'Epic', 1050, 1350, TO_DATE('27.10.2020', 'DD.MM.YYYY'), (SELECT champion_id FROM champion WHERE champion_name='Teemo'));
        
-- adaugare skin cu price_rp in afara valorilor posibile
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Little Demon Teemo', 'Epic', 1050, 1450, TO_DATE('27.10.2020', 'DD.MM.YYYY'), (SELECT champion_id FROM champion WHERE champion_name='Teemo'));
        
-- adaugare skin cu price_orange_essence in afara valorilor posibile
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Little Demon Teemo', 'Epic', 1150, 1350, TO_DATE('27.10.2020', 'DD.MM.YYYY'), (SELECT champion_id FROM champion WHERE champion_name='Teemo'));
        
-- adaugare skin cu relese_date mai mare decat SYSDATE
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Little Demon Teemo', 'Epic', 1050, 1350, TO_DATE('27.10.2021', 'DD.MM.YYYY'), (SELECT champion_id FROM champion WHERE champion_name='Teemo'));

-- adaugare skin cu type in afara valorilor posibile
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Little Demon Teemo', 'Normal', 1050, 1350, TO_DATE('27.10.2020', 'DD.MM.YYYY'), (SELECT champion_id FROM champion WHERE champion_name='Teemo'));
        
-- TESTARE CONSTRANGERI RESOURCES
-- creare tabela resources cu rp < 0
INSERT INTO resources VALUES(-5, 4356, 1043, 6);

-- creare tabela resources cu be < 0
INSERT INTO resources VALUES(55, -46, 1043, 6);

-- creare tabela resources cu oe < 0
INSERT INTO resources VALUES(4, 4356, -4, 6);

-- TESTARE CONSTRANGERI INVENTORY

-- creare tabela inventory cu champion_chests < 0
INSERT INTO inventory VALUES(-5, 4, 3, 2, 10, 6);

-- creare tabela inventory cu skin_chests < 0
INSERT INTO inventory VALUES(5, -4, 3, 2, 10, 6);

-- creare tabela inventory cu chest_keys < 0
INSERT INTO inventory VALUES(5, 4, -3, 2, 10, 6);

-- creare tabela inventory cu key_fragments < 0
INSERT INTO inventory VALUES(5, 4, 3, -2, 10, 6);

-- creare tabela inventory cu gemstones < 0
INSERT INTO inventory VALUES(5, 4, 3, 2, -10, 6);
