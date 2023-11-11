--@block initialize Chat_privata
CREATE TABLE IF NOT EXISTS Chat_privata
(
        nickname varchar(45) UNIQUE NOT NULL
        sendAt TIMESTAMP DEFAULT NOT NULL

);

--@block initialize Chat_pubblica
CREATE TABLE IF NOT EXISTS Chat_pubblica
(
        nickname varchar(45) UNIQUE NOT NULL, 
        numbs_users integer default 0, 
        numbs_mess integer default 0

);