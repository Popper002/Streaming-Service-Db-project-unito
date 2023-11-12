--@block initialize Descrizione
CREATE TABLE Descrizione (
    nome varchar(20),
    social text default NULL,
    biografia text default NULL,
    FOREIGN KEY (nome) REFERENCES Canale(channel_name) ON DELETE CASCADE ON
    PRIMARY KEY (nome)
     constraint link_valid check (
        link ~ '((http|https)://)(www.)?” 
+ “[a-zA-Z0-9@:%.\+~#?&//=]{2,256}\.[a-z]” 
+ “{2,6}\b([-a-zA-Z0-9@:%.\+~#?&//=]*)'
    )
);