CREATE TABLE chat
(
        numbers_users INTEGER DEFAULT 0, 
        message_timestamp TIMESTAMP(2) NOT NULL , DEFAULT CURRENT_TIMESTAMP, 
      
);

CREATE TABLE chat_privata
(
        nickname varchar(45) UNIQUE NOT NULL, 

)INHERITS (chat);

CREATE TABLE chat_pubblica
(
        nickname varchar(45) UNIQUE NOT NULL, 
        numbs_users integer default 0, 
        numbs_mess integer default 0

)INHERITS (chat);