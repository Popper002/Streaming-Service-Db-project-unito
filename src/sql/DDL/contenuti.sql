CREATE TABLE IF NOT EXISTS contenuti(
    live integer DEFAULT 0 ,
    video integer default 0,
    clip integer default 0,
    url varchar(45),
    PRIMARY KEY ( url)
     constraint check_url check (
        url *~ '((http|https)://)(www.)?” 
+ “[a-zA-Z0-9@:%.\+~#?&//=]{2,256}\.[a-z]” 
+ “{2,6}\b([-a-zA-Z0-9@:%.\+~#?&//=]*)'
    )
); 