CREATE TABLE descrizione (
    social text default NULL,
    biografia text default NULL,
     constraint link_valid check (
        link *~ '((http|https)://)(www.)?” 
+ “[a-zA-Z0-9@:%.\+~#?&//=]{2,256}\.[a-z]” 
+ “{2,6}\b([-a-zA-Z0-9@:%.\+~#?&//=]*)'
    )
)