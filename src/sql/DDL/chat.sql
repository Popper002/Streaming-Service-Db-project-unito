--@block initialize Chat_privata
CREATE TABLE IF NOT EXISTS chat
(
        pubblica BOOLEAN DEFAULT FALSE,
        messaggio integer DEFAULT NULL, 
        nick_mandante VARCHAR(45) ,
        nick_ricevente VARCHAR(45),
        tempo TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (nick_mandante,nick_ricevente)

);