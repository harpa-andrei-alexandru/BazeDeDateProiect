-- Generated by Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   at:        2020-12-01 14:58:10 EET
--   site:      Oracle Database 12c
--   type:      Oracle Database 12c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE champion (
    champion_id         NUMBER(3) NOT NULL,
    champion_name       VARCHAR2(20) NOT NULL,
    price_rp            NUMBER(3) NOT NULL,
    price_blue_essence  NUMBER(4) NOT NULL,
    release_date        DATE,
    health              NUMBER(5, 2),
    armor               NUMBER(4, 2),
    magic_resist        NUMBER(4, 2),
    attack_damage       NUMBER(4, 2)
)
LOGGING;

ALTER TABLE champion
    ADD CONSTRAINT champion_name_ck CHECK ( length(champion_name) >= 3 );

ALTER TABLE champion
    ADD CONSTRAINT champion_price_rp_ck CHECK ( price_rp IN ( 260, 585, 790, 880, 975 ) );

ALTER TABLE champion
    ADD CONSTRAINT champion_price_blue_essence_ck CHECK ( price_blue_essence IN ( 450, 1350, 3150, 4800, 6300,
                                                                                  7800 ) );

ALTER TABLE champion
    ADD CONSTRAINT champion_health_ck CHECK ( health BETWEEN 480 AND 740 );

ALTER TABLE champion
    ADD CONSTRAINT champion_armor_ck CHECK ( armor BETWEEN 18 AND 47 );

ALTER TABLE champion
    ADD CONSTRAINT champion_magic_resist_ck CHECK ( magic_resist BETWEEN 25 AND 39 );

ALTER TABLE champion
    ADD CONSTRAINT champion_attack_damage_ck CHECK ( attack_damage BETWEEN 45 AND 70 );

ALTER TABLE champion ADD CONSTRAINT champion_pk PRIMARY KEY ( champion_id );

ALTER TABLE champion ADD CONSTRAINT champion_champion_name_un UNIQUE ( champion_name );

CREATE TABLE club (
    club_id            NUMBER(1) NOT NULL,
    name               VARCHAR2(15) NOT NULL,
    create_date        DATE,
    number_of_members  NUMBER(3)
)
LOGGING;

ALTER TABLE club
    ADD CONSTRAINT club_club_name_ck CHECK ( length(name) >= 4 );

ALTER TABLE club ADD CONSTRAINT club_num_of_mem_ck CHECK ( number_of_members >= 1 );

ALTER TABLE club ADD CONSTRAINT club_pk PRIMARY KEY ( club_id );

ALTER TABLE club ADD CONSTRAINT club_name_un UNIQUE ( name );

CREATE TABLE inventory (
    champion_chests  NUMBER(3) NOT NULL,
    skin_chests      NUMBER(3) NOT NULL,
    chest_keys       NUMBER(3) NOT NULL,
    key_fragments    NUMBER(3) NOT NULL,
    gemstones        NUMBER(3) NOT NULL,
    user_id          NUMBER(1) NOT NULL
)
LOGGING;

ALTER TABLE inventory ADD CONSTRAINT inventory_ch_c_ck CHECK ( champion_chests >= 0 );

ALTER TABLE inventory ADD CONSTRAINT inventory_sk_c_ck CHECK ( skin_chests >= 0 );

ALTER TABLE inventory ADD CONSTRAINT inventory_chest_keys_ck CHECK ( chest_keys >= 0 );

ALTER TABLE inventory ADD CONSTRAINT inventory_key_fragments_ck CHECK ( key_fragments >= 0 );

ALTER TABLE inventory ADD CONSTRAINT inventory_gemstones_ck CHECK ( gemstones >= 0 );

CREATE UNIQUE INDEX inventory__idx ON
    inventory (
        user_id
    ASC )
        LOGGING;

CREATE TABLE lol_user (
    user_id        NUMBER(1) NOT NULL,
    name           VARCHAR2(16) NOT NULL,
    email          VARCHAR2(30) NOT NULL,
    summoner_name  VARCHAR2(16) NOT NULL,
    lvl            NUMBER(4) DEFAULT 1 NOT NULL,
    rank_solo_duo  VARCHAR2(2) DEFAULT 'U' NOT NULL,
    rank_flex      VARCHAR2(2) DEFAULT 'U' NOT NULL,
    club_id        NUMBER(1) NOT NULL
)
LOGGING;

ALTER TABLE lol_user
    ADD CONSTRAINT user_name_ck CHECK ( length(name) >= 5 );

ALTER TABLE lol_user
    ADD CONSTRAINT user_email_ck CHECK ( REGEXP_LIKE ( email,
                                                       '^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$' ) );

ALTER TABLE lol_user
    ADD CONSTRAINT user_summoner_name_ck CHECK ( length(summoner_name) >= 5 );

ALTER TABLE lol_user ADD CONSTRAINT user_lvl_ck CHECK ( lvl >= 1 );

ALTER TABLE lol_user
    ADD CONSTRAINT user_rank_solo_duo_ck CHECK ( rank_solo_duo BETWEEN 'B1' AND 'B5'
                                                 OR rank_solo_duo BETWEEN 'D1' AND 'D5'
                                                 OR rank_solo_duo BETWEEN 'G1' AND 'G5'
                                                 OR rank_solo_duo BETWEEN 'P1' AND 'P5'
                                                 OR rank_solo_duo BETWEEN 'S1' AND 'S5'
                                                 OR rank_solo_duo IN ( 'C', 'GM', 'M', 'U' ) );

ALTER TABLE lol_user
    ADD CONSTRAINT user_user_rank_flex CHECK ( rank_flex BETWEEN 'B1' AND 'B5'
                                               OR rank_flex BETWEEN 'D1' AND 'D5'
                                               OR rank_flex BETWEEN 'G1' AND 'G5'
                                               OR rank_flex BETWEEN 'P1' AND 'P5'
                                               OR rank_flex BETWEEN 'S1' AND 'S5'
                                               OR rank_flex IN ( 'C', 'GM', 'M', 'U' ) );

ALTER TABLE lol_user ADD CONSTRAINT lol_user_pk PRIMARY KEY ( user_id );

ALTER TABLE lol_user ADD CONSTRAINT lol_user_email_un UNIQUE ( email );

ALTER TABLE lol_user ADD CONSTRAINT lol_user_name_un UNIQUE ( name );

CREATE TABLE resources (
    riot_points     NUMBER(6) NOT NULL,
    blue_essence    NUMBER(6) NOT NULL,
    orange_essence  NUMBER(6) NOT NULL,
    user_id         NUMBER(1) NOT NULL
)
LOGGING;

ALTER TABLE resources ADD CONSTRAINT resources_rp_ck CHECK ( riot_points >= 0 );

ALTER TABLE resources ADD CONSTRAINT resources_be_ck CHECK ( blue_essence >= 0 );

ALTER TABLE resources ADD CONSTRAINT resources_oe_ck CHECK ( orange_essence >= 0 );

CREATE UNIQUE INDEX resources__idx ON
    resources (
        user_id
    ASC )
        LOGGING;

CREATE TABLE skin (
    skin_id               NUMBER(3) NOT NULL,
    skin_name             VARCHAR2(30) NOT NULL,
    type                  VARCHAR2(10) NOT NULL,
    price_orange_essence  NUMBER(4) NOT NULL,
    price_rp              NUMBER(4) NOT NULL,
    release_date          DATE,
    champion_id           NUMBER(3) NOT NULL
)
LOGGING;

ALTER TABLE skin
    ADD CONSTRAINT skin_type_ck CHECK ( type IN ( 'Deluxe', 'Epic', 'Legacy', 'Legendary', 'Mythic',
                                                  'Standard', 'Timeworn', 'Ultimate' ) );

ALTER TABLE skin
    ADD CONSTRAINT skin_price_orange_essence_ck CHECK ( price_orange_essence IN ( 220, 450, 675, 1050, 1520,
                                                                                  2150, 2950 ) );

ALTER TABLE skin
    ADD CONSTRAINT skin_price_rp_ck CHECK ( price_rp IN ( 0, 520, 750, 975, 1350,
                                                          1820, 2775, 3250 ) );

ALTER TABLE skin ADD CONSTRAINT skin_pk PRIMARY KEY ( skin_id );

ALTER TABLE skin ADD CONSTRAINT skin_skin_name_un UNIQUE ( skin_name );

CREATE TABLE user_champion (
    user_id      NUMBER(1) NOT NULL,
    champion_id  NUMBER(3) NOT NULL
)
LOGGING;

ALTER TABLE user_champion ADD CONSTRAINT user_champion_fk_pk PRIMARY KEY ( user_id,
                                                                           champion_id );

CREATE TABLE user_skin (
    user_id      NUMBER(1) NOT NULL,
    champion_id  NUMBER(3) NOT NULL,
    skin_id      NUMBER(3) NOT NULL
)
LOGGING;

ALTER TABLE user_skin
    ADD CONSTRAINT user_skin_fk_pk PRIMARY KEY ( skin_id,
                                                 user_id,
                                                 champion_id );

ALTER TABLE inventory
    ADD CONSTRAINT inventory_lol_user_fk FOREIGN KEY ( user_id )
        REFERENCES lol_user ( user_id )
    NOT DEFERRABLE;

ALTER TABLE lol_user
    ADD CONSTRAINT lol_user_club_fk FOREIGN KEY ( club_id )
        REFERENCES club ( club_id )
    NOT DEFERRABLE;

ALTER TABLE resources
    ADD CONSTRAINT resources_lol_user_fk FOREIGN KEY ( user_id )
        REFERENCES lol_user ( user_id )
    NOT DEFERRABLE;

ALTER TABLE skin
    ADD CONSTRAINT skin_champion_fk FOREIGN KEY ( champion_id )
        REFERENCES champion ( champion_id )
    NOT DEFERRABLE;

ALTER TABLE user_champion
    ADD CONSTRAINT user_champion_fk_champion_fk FOREIGN KEY ( champion_id )
        REFERENCES champion ( champion_id )
    NOT DEFERRABLE;

ALTER TABLE user_champion
    ADD CONSTRAINT user_champion_fk_lol_user_fk FOREIGN KEY ( user_id )
        REFERENCES lol_user ( user_id )
    NOT DEFERRABLE;

ALTER TABLE user_skin
    ADD CONSTRAINT user_skin_champion_fk FOREIGN KEY ( champion_id )
        REFERENCES champion ( champion_id )
    NOT DEFERRABLE;

ALTER TABLE user_skin
    ADD CONSTRAINT user_skin_lol_user_fk FOREIGN KEY ( user_id )
        REFERENCES lol_user ( user_id )
    NOT DEFERRABLE;

ALTER TABLE user_skin
    ADD CONSTRAINT user_skin_skin_fk FOREIGN KEY ( skin_id )
        REFERENCES skin ( skin_id )
    NOT DEFERRABLE;

CREATE OR REPLACE TRIGGER trg_champion_BRIU 
    BEFORE INSERT OR UPDATE ON Champion 
    FOR EACH ROW 
BEGIN
	IF( :new.release_date >= SYSDATE )
	THEN
		RAISE_APPLICATION_ERROR( -20001,
			'Data invalida: ' || TO_CHAR( :new.release_date, 'DD.MM.YYYY HH24:MI:SS' ) || ' trebuie sa fie mai mica decat data curenta.' );
	END IF;
END; 
/

CREATE OR REPLACE TRIGGER trg_club_BRIU 
    BEFORE INSERT OR UPDATE ON Club 
    FOR EACH ROW 
BEGIN
	IF( :new.create_date >= SYSDATE )
	THEN
		RAISE_APPLICATION_ERROR( -20001,
			'Data invalida: ' || TO_CHAR( :new.create_date, 'DD.MM.YYYY HH24:MI:SS' ) || ' trebuie sa fie mai mica decat data curenta.' );
	END IF;
END; 
/

CREATE OR REPLACE TRIGGER trg_skin_BRIU 
    BEFORE INSERT OR UPDATE ON Skin 
    FOR EACH ROW 
BEGIN
	IF( :new.release_date >= SYSDATE )
	THEN
		RAISE_APPLICATION_ERROR( -20001,
			'Data invalida: ' || TO_CHAR( :new.release_date, 'DD.MM.YYYY HH24:MI:SS' ) || ' trebuie sa fie mai mica decat data curenta.' );
	END IF;
END; 
/

CREATE SEQUENCE champion_champion_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER champion_champion_id_trg BEFORE
    INSERT ON champion
    FOR EACH ROW
    WHEN ( new.champion_id IS NULL )
BEGIN
    :new.champion_id := champion_champion_id_seq.nextval;
END;
/

CREATE SEQUENCE club_club_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER club_club_id_trg BEFORE
    INSERT ON club
    FOR EACH ROW
    WHEN ( new.club_id IS NULL )
BEGIN
    :new.club_id := club_club_id_seq.nextval;
END;
/

CREATE SEQUENCE lol_user_user_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER lol_user_user_id_trg BEFORE
    INSERT ON lol_user
    FOR EACH ROW
    WHEN ( new.user_id IS NULL )
BEGIN
    :new.user_id := lol_user_user_id_seq.nextval;
END;
/

CREATE SEQUENCE skin_skin_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER skin_skin_id_trg BEFORE
    INSERT ON skin
    FOR EACH ROW
    WHEN ( new.skin_id IS NULL )
BEGIN
    :new.skin_id := skin_skin_id_seq.nextval;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             2
-- ALTER TABLE                             46
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           7
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          4
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0