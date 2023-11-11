--@block initialize Descrizione
CREATE TABLE Descrizione (
    social text default NULL,
    biografia text default NULL,
     constraint link_valid check (
        social ~ '((http|https)://)(www.)?” 
+ “[a-zA-Z0-9@:%.\+~#?&//=]{2,256}\.[a-z]” 
+ “{2,6}\b([-a-zA-Z0-9@:%.\+~#?&//=]*)'
    )
);