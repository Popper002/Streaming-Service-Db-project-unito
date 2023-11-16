--@block initialize Chat_privata
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE IF NOT EXISTS chat
(
        id_messaggio uuid DEFAULT uuid_generate_v4 (),
        pubblica BOOLEAN DEFAULT FALSE,
        messaggio varchar(100) DEFAULT NULL, 
        nick_mandante VARCHAR(45) ,
        nick_ricevente VARCHAR(45),
        tempo TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY ( id_messaggio)
);