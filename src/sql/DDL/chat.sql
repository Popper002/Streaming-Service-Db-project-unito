--@block initialize Chat
CREATE TABLE Chat
(
        numbers_users INTEGER DEFAULT 0, 
        message_timestamp TIMESTAMP(2) NOT NULL , DEFAULT CURRENT_TIMESTAMP, 
      
);

--@block initialize Chat_privata
CREATE TABLE Chat_privata
(
        nickname varchar(45) UNIQUE NOT NULL, 

)INHERITS (chat);

--@block initialize Chat_pubblica
CREATE TABLE Chat_pubblica
(
        nickname varchar(45) UNIQUE NOT NULL, 
        numbs_users integer default 0, 
        numbs_mess integer default 0

)INHERITS (chat);