CREATE TABLE chat
(
        numbers_users INTEGER DEFAULT NULL, 
        message_timestamp TIMESTAMP(2) NOT NULL , DEFAULT CURRENT_TIMESTAMP, 
      
);

CREATE TABLE chat_privata
(
        nickname varchar(45) UNIQUE NOT NULL, 

)INHERITS (chat);

CREATE TABLE chat_pubblica
(
        nickname varchar(45) UNIQUE NOT NULL, 
        numbs_users integer default NULL, 
        numbs_mess integer default NULL

)INHERITS (chat);