-- insert into club table
INSERT INTO club(name, create_date, number_of_members) VALUES('Club1', TO_DATE('14.11.2018', 'DD.MM.YYYY'), 50);
INSERT INTO club(name, create_date, number_of_members) VALUES('Club2', TO_DATE('04.01.2019', 'DD.MM.YYYY'), 50);
INSERT INTO club(name, create_date, number_of_members) VALUES('Club3', TO_DATE('21.12.2012', 'DD.MM.YYYY'), 50);
INSERT INTO club(name, create_date, number_of_members) VALUES('Club4', TO_DATE('14.03.2014', 'DD.MM.YYYY'), 50);
INSERT INTO club(name, create_date, number_of_members) VALUES('Club5', TO_DATE('02.07.2019', 'DD.MM.YYYY'), 50);

-- insert into lol_user table
INSERT INTO lol_user(name, email, summoner_name, lvl, rank_solo_duo, club_id) 
    VALUES('Squizy0977', 'andy_alexandru23@yahoo.com', 'Squizy09', 160, 'G5', (SELECT club_id FROM club WHERE name='Club1'));

-- insert into inventory table
INSERT INTO inventory VALUES(5, 4, 3, 2, 10, lol_user_user_id_seq.currval);

-- insert into resources table
INSERT INTO resources VALUES(500, 4356, 1043, lol_user_user_id_seq.currval);

--insert into champion and skin tables
-- Garen
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Garen', 260, 450, TO_DATE('27.04.2010', 'DD.MM.YYYY'), 620, 36, 32.1, 66);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('God-King Garen', 'Legendary', 1520, 1820, TO_DATE('27.06.2018', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Mecha Kingdoms Garen', 'Epic', 1050, 1350, TO_DATE('15.01.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Riven     
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Riven', 880, 4800, TO_DATE('14.09.2011', 'DD.MM.YYYY'), 560, 33, 32.1, 64);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Battle Bunny Riven', 'Standard', 675, 975, TO_DATE('06.03.2012', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Dawnbringer Riven', 'Legendary', 1520, 1820, TO_DATE('14.06.2017', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Arcade Riven', 'Epic', 1050, 1350, TO_DATE('19.08.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
  
-- Camille      
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Camille', 975, 6300, TO_DATE('12.07.2016', 'DD.MM.YYYY'), 575.6, 35, 32.1, 68);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Program Camille', 'Epic', 1050, 1350, TO_DATE('12.12.2016', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Coven Camille', 'Epic', 1050, 1350, TO_DATE('27.11.2018', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Yasuo       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Yasuo', 880, 4800, TO_DATE('13.12.2013', 'DD.MM.YYYY'), 490, 30, 32, 60);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('PROJECT: Yasuo', 'Epic', 1050, 1350, TO_DATE('31.08.2014', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Nightbringer Yasuo', 'Legendary', 1520, 1820, TO_DATE('14.06.2017', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('True Damage Yasuo', 'Epic', 1050, 1350, TO_DATE('10.11.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Tristana       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Tristana', 585, 1350, TO_DATE('21.02.2009', 'DD.MM.YYYY'), 559, 26, 30, 61);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Rocket Girl Tristana', 'Standard', 675, 975, TO_DATE('19.10.2012', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Little Demon Tristana', 'Epic', 1050, 1350, TO_DATE('30.05.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Hecarim       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Hecarim', 880, 4800, TO_DATE('18.04.2012', 'DD.MM.YYYY'), 580, 36, 32.1, 66);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Arcade Hecarim', 'Epic', 1050, 1350, TO_DATE('21.08.2013', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Elderwood Hecarim', 'Epic', 1050, 1350, TO_DATE('25.11.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('High Noon Hecarim', 'Epic', 1050, 1350, TO_DATE('10.10.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);

-- Janna
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Janna', 585, 1350, TO_DATE('02.09.2009', 'DD.MM.YYYY'), 500, 28, 30, 46);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Star Guardian Janna', 'Epic', 1050, 1350, TO_DATE('05.10.2016', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Sacred Sword Janna', 'Epic', 1050, 1350, TO_DATE('27.09.2017', 'DD.MM.YYYY'), champion_champion_id_seq.currval);

-- Nasus       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Nasus', 585, 1350, TO_DATE('01.10.2009', 'DD.MM.YYYY'), 561, 34, 32.1, 67);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Infernal Nasus', 'Legendary', 1520, 1820, TO_DATE('20.11.2013', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Worldbreaker Nasus', 'Deluxe', 450, 750, TO_DATE('10.11.2016', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Galactic Nasus', 'Timeworn', 220, 520, TO_DATE('13.07.2010', 'DD.MM.YYYY'), champion_champion_id_seq.currval);

-- Ekko        
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Ekko', 975, 6300, TO_DATE('29.05.2015', 'DD.MM.YYYY'), 585, 32, 32, 58);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('PROJECT: Ekko', 'Epic', 1050, 1350, TO_DATE('01.08.2016', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('True Damage Ekko', 'Legendary', 1520, 1820, TO_DATE('10.11.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Pulsefire Ekko', 'Epic', 1050, 1350, TO_DATE('14.05.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);

-- Azir        
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Azir', 975, 6300, TO_DATE('16.09.2014', 'DD.MM.YYYY'), 552, 19.04, 30, 52);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Galactic Azir', 'Standard', 675, 975, TO_DATE('15.09.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Gravelord Azir', 'Epic', 1050, 1350, TO_DATE('01.12.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);

-- Braum       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Braum', 880, 4800, TO_DATE('12.05.2014', 'DD.MM.YYYY'), 540, 47, 32.1, 55.376);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Dragonslayer Braum', 'Standard', 675, 975, TO_DATE('11.05.2014', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('El Tigre Braum', 'Epic', 1050, 1350, TO_DATE('21.01.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Crime City Braum', 'Epic', 1050, 1350, TO_DATE('23.08.2018', 'DD.MM.YYYY'), champion_champion_id_seq.currval);

-- Caitlyn       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Caitlyn', 880, 4800, TO_DATE('04.01.2011', 'DD.MM.YYYY'), 510, 28, 30, 62);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Pulsefire Caitlyn', 'Legendary', 1520, 1820, TO_DATE('24.05.2017', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Pool Party Caitlyn', 'Epic', 1050, 1350, TO_DATE('02.08.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Arcade Caitlyn', 'Epic', 1050, 1350, TO_DATE('28.06.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);

-- Shaco       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Shaco', 790, 3150, TO_DATE('10.10.2009', 'DD.MM.YYYY'), 587, 30, 32.1, 63);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Dark Star Shaco', 'Epic', 1050, 1350, TO_DATE('13.06.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Arcanist Shaco', 'Epic', 1050, 1350, TO_DATE('09.07.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);

-- Ahri
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Ahri', 880, 4800, TO_DATE('14.12.2011', 'DD.MM.YYYY'), 526, 20.88, 30, 53.04);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Star Guardian Ahri', 'Legendary', 1520, 1820, TO_DATE('06.09.2017', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('K/DA Ahri', 'Epic', 1050, 1350, TO_DATE('03.11.2018', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Academy Ahri', 'Deluxe', 450, 750, TO_DATE('26.08.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Nautilus
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Nautilus', 880, 4800, TO_DATE('14.02.2012', 'DD.MM.YYYY'), 576.48, 39, 32.1, 61);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('AstroNautilus', 'Epic', 1050, 1350, TO_DATE('04.09.2012', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Warden Nautilus', 'Deluxe', 450, 750, TO_DATE('17.02.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
 
-- Ashe       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Ashe', 260, 450, TO_DATE('21.02.2009', 'DD.MM.YYYY'), 570, 26, 30, 59);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('PROJECT: Ashe', 'Legendary', 1520, 1820, TO_DATE('01.08.2016', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Cosmic Queen Ashe', 'Epic', 1050, 1350, TO_DATE('21.08.2018', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('High Noon Ashe', 'Epic', 1520, 1820, TO_DATE('10.10.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
 
-- Sett       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Sett', 975, 6300, TO_DATE('14.01.2020', 'DD.MM.YYYY'), 600, 33, 32, 60);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Mecha Kingdoms Sett', 'Epic', 1050, 1350, TO_DATE('14.01.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Obsidian Dragon Sett', 'Epic', 1050, 1350, TO_DATE('01.10.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Elise       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Elise', 880, 4800, TO_DATE('26.10.2012', 'DD.MM.YYYY'), 534, 37, 30, 55);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Blood Moon Elise', 'Standard', 675, 975, TO_DATE('08.01.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Super Galaxy Elise', 'Epic', 1050, 1350, TO_DATE('16.10.2017', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
 
-- Zed       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Zed', 880, 4800, TO_DATE('13.11.2012', 'DD.MM.YYYY'), 584, 32, 32.1, 63);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('PROJECT: Zed', 'Epic', 1050, 1350, TO_DATE('07.09.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Galaxy Slayer Zed', 'Legendary', 1520, 1820, TO_DATE('18.04.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('PsyOps Zed', 'Epic', 1050, 1350, TO_DATE('17.09.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Lulu        
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Lulu', 880, 4800, TO_DATE('20.03.2012', 'DD.MM.YYYY'), 525, 29, 30, 47);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Star Guardian Lulu', 'Epic', 1050, 1350, TO_DATE('05.10.2016', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Cosmic Enchantress Lulu', 'Epic', 1050, 1350, TO_DATE('21.08.2018', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Wicked Lulu', 'Standard', 675, 975, TO_DATE('20.03.2012', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Jhin
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Jhin', 975, 6300, TO_DATE('01.02.2016', 'DD.MM.YYYY'), 585, 24, 30, 59);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Blood Moon Jhin', 'Epic', 1050, 1350, TO_DATE('09.02.2017', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Dark Cosmic Jhin', 'Legendary', 1520, 1820, TO_DATE('13.06.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('PROJECT: Jhin', 'Epic', 1050, 1350, TO_DATE('22.11.2017', 'DD.MM.YYYY'), champion_champion_id_seq.currval);

-- Teemo        
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Teemo', 585, 1350, TO_DATE('21.02.2009', 'DD.MM.YYYY'), 528, 24.3, 30, 54);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Omega Squad Teemo', 'Legendary', 1520, 1820, TO_DATE('08.03.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Astronaut Teemo', 'Epic', 1050, 1350, TO_DATE('27.10.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);

        
-- Olaf     
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Olaf', 790, 3150, TO_DATE('09.06.2010', 'DD.MM.YYYY'), 597, 35, 32.1, 68);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Pentakill Olaf', 'Standard', 675, 975, TO_DATE('01.10.2012', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Butcher Olaf', 'Deluxe', 450, 750, TO_DATE('07.09.2016', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Dragonslayer Olaf', 'Epic', 1050, 1350, TO_DATE('30.01.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Lux       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Lux', 790, 3150, TO_DATE('19.10.2010', 'DD.MM.YYYY'), 490, 18.72, 30, 53.54);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Star Guardian Lux', 'Epic', 1050, 1350, TO_DATE('17.05.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Elementalist Lux', 'Ultimate', 2950, 3250, TO_DATE('28.11.2016', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Dark Cosmic Lux', 'Legendary', 1520, 1820, TO_DATE('26.03.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Sona      
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Sona', 790, 3150, TO_DATE('21.09.2010', 'DD.MM.YYYY'), 480, 28, 30, 49);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('DJ Sona', 'Ultimate', 2950, 3250, TO_DATE('25.02.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Odyssey Sona', 'Epic', 1050, 1350, TO_DATE('12.09.2018', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('PsyOps Sona', 'Legendary', 1520, 1820, TO_DATE('03.09.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Draven       
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Draven', 880, 4800, TO_DATE('06.06.2012', 'DD.MM.YYYY'), 605, 29, 30, 60);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Soul Reaver Draven', 'Epic', 1050, 1350, TO_DATE('05.06.2012', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Beast Hunter Draven', 'Deluxe', 450, 750, TO_DATE('04.02.2016', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Mecha Kingdoms Draven', 'Epic', 1050, 1350, TO_DATE('15.01.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Zac   
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Zac', 880, 4800, TO_DATE('29.03.2013', 'DD.MM.YYYY'), 615, 33, 32, 60);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Pool Party Zac', 'Epic', 1050, 1350, TO_DATE('15.06.2015', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Battlecast Zac', 'Epic', 1050, 1350, TO_DATE('12.11.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);

-- Yone
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Yone', 975, 6300, TO_DATE('06.08.2020', 'DD.MM.YYYY'), 550, 28, 32, 60);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Spirit Blossom Yone', 'Epic', 1050, 1350, TO_DATE('06.08.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Aphelios     
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Aphelios', 975, 6300, TO_DATE('11.12.2019', 'DD.MM.YYYY'), 530, 28, 26, 57);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('Nightbringer Aphelios', 'Epic', 1050, 1350, TO_DATE('11.12.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- Senna     
INSERT INTO champion(champion_name, price_rp, price_blue_essence, release_date, health, armor, magic_resist, attack_damage) 
        VALUES('Senna', 975, 6300, TO_DATE('10.11.2019', 'DD.MM.YYYY'), 520, 28, 30, 50);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('True Damage Senna', 'Epic', 1050, 1350, TO_DATE('10.11.2019', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
INSERT INTO skin(skin_name, type, price_orange_essence, price_rp, release_date, champion_id)
        VALUES('High Noon Senna', 'Legendary', 1520, 1820, TO_DATE('18.06.2020', 'DD.MM.YYYY'), champion_champion_id_seq.currval);
        
-- adaugare campioni user 1

INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Riven'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Yasuo'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Yone'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Tristana'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Caitlyn'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Senna'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Sett'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Zac'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Braum'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Garen'));

-- adaugare skin-uri user 1
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                         FROM skin s, user_champion uc
                         WHERE s.skin_name='God-King Garen' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='Squizy0977');
                    
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Mecha Kingdoms Garen' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='Squizy0977');
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Battle Bunny Riven' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='Squizy0977');  

INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Dawnbringer Riven' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='Squizy0977');                         
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='PROJECT: Yasuo' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='Squizy0977');                         
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Spirit Blossom Yone' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='Squizy0977');                          
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Rocket Girl Tristana' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='Squizy0977');                           
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Pulsefire Caitlyn' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='Squizy0977');                            
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Mecha Kingdoms Sett' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='Squizy0977');
                          
-- adaugare user 2
INSERT INTO lol_user(name, email, summoner_name, lvl, rank_solo_duo, club_id) 
    VALUES('CostiFX', 'costi_fx1999@gmail.com', 'CostiFX', 260, 'P1', (SELECT club_id FROM club WHERE name='Club2'));
    
-- insert into inventory table
INSERT INTO inventory VALUES(2, 3, 5, 7, 1, lol_user_user_id_seq.currval);

-- insert into resources table
INSERT INTO resources VALUES(1500, 356, 104, lol_user_user_id_seq.currval);
    
-- adaugare campioni pentru user 2
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Riven'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Yasuo'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Ekko'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Jhin'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Caitlyn'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Janna'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Sett'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Shaco'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Braum'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Camille'));
                                                                
-- adaugare skin-uri pentru user 2

INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Butcher Olaf' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='CostiFX');
                                                                
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Mecha Kingdoms Garen' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='CostiFX');
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Dark Cosmic Lux' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='CostiFX');   

INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Dawnbringer Riven' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='CostiFX');                         
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Star Guardian Lulu' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='CostiFX');                          
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Dark Star Shaco' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='CostiFX');                          
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='PROJECT: Ekko' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='CostiFX');                            
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Program Camille' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='CostiFX');                            
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Mecha Kingdoms Sett' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='CostiFX');
                          
-- adaugare user 3
INSERT INTO lol_user(name, email, summoner_name, lvl, club_id) 
    VALUES('RoyalCombo', 'royal_combo@yahoo.com', 'RoyalCombo', 20, (SELECT club_id FROM club WHERE name='Club3'));
    
-- insert into inventory table
INSERT INTO inventory VALUES(4, 3, 6, 7, 5, lol_user_user_id_seq.currval);

-- insert into resources table
INSERT INTO resources VALUES(300, 2356, 1104, lol_user_user_id_seq.currval);

-- adaugare campioni user 3
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Elise'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Yasuo'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Zed'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Lulu'));
                                                                 
-- adaugare skin-uri user 3

INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Star Guardian Lulu' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='RoyalCombo');
                                                                
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='PsyOps Zed' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='RoyalCombo');
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Nightbringer Yasuo' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='RoyalCombo');
 
-- adaugare user 4                         
INSERT INTO lol_user(name, email, summoner_name, lvl, club_id) 
    VALUES('User4', 'user4@yahoo.com', 'User404', 30, (SELECT club_id FROM club WHERE name='Club4'));

-- insert into inventory table
INSERT INTO inventory VALUES(5, 3, 5, 7, 1, lol_user_user_id_seq.currval);

-- insert into resources table
INSERT INTO resources VALUES(200, 3546, 1304, lol_user_user_id_seq.currval);

-- adaugare campioni user 4
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Elise'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Yasuo'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Zed'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Lulu'));
                                                                 
-- adaugare skin-uri user 4

INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Star Guardian Lulu' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='User4');
                                                                
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='PsyOps Zed' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='User4');
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Nightbringer Yasuo' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='User4');
                          
                          
-- adaugare user 5
INSERT INTO lol_user(name, email, summoner_name, lvl, club_id) 
    VALUES('User5', 'user5@gmail.com', 'User505', 15,(SELECT club_id FROM club WHERE name='Club5'));

-- insert into inventory table
INSERT INTO inventory VALUES(2, 3, 5, 7, 1, lol_user_user_id_seq.currval);

-- insert into resources table
INSERT INTO resources VALUES(1500, 356, 104, lol_user_user_id_seq.currval);
    
-- adaugare campioni pentru user 5
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Janna'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Sett'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Shaco'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Braum'));
INSERT INTO user_champion VALUES (lol_user_user_id_seq.currval,(SELECT champion.champion_id 
                                                                 FROM champion 
                                                                 WHERE champion.champion_name='Camille'));
                                                                
-- adaugare skin-uri pentru user 5                       
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Dark Star Shaco' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='User5');                          
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Star Guardian Janna' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='User5');                            
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Program Camille' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='User5');                            
                          
INSERT INTO user_skin SELECT lol_user_user_id_seq.currval, uc.champion_id, s.skin_id
                          FROM skin s, user_champion uc
                          WHERE s.skin_name='Mecha Kingdoms Sett' and uc.champion_id=s.champion_id and uc.user_id=(SELECT user_id FROM lol_user WHERE name='User5');
COMMIT WORK;

SELECT l.name, r.riot_points
FROM lol_user l, resources r
WHERE l.user_id=r.user_id;
                        
                                         
                          
                          
                          
                          
                          
                          
                          
                          
                          
                                                               