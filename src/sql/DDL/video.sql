--@block initalize Video 
CREATE TABLE Video
(
    titolo varchar(90) default NOT NULL, 
    durata decimal (6,4)default 0, 
    categoria integer default  NULL,
    num_spettatori_medio float default 0,
    tag varchar(20) default NULL,
    constraint check_tag check (
        tag*~'#[A-Za-z0-9]'
    )
    url varchar(45),
    constraint check_url check (
        url *~ '((http|https)://)(www.)?” 
+ “[a-zA-Z0-9@:%.\+~#?&//=]{2,256}\.[a-z]” 
+ “{2,6}\b([-a-zA-Z0-9@:%.\+~#?&//=]*)'
    )
    --TODO : da rivedere
    Foreign Key (titolo) REFERENCES ()
); 
CREATE TABLE clip
(
    titolo varchar(45) default NOT NULL , 
    create domain durata as decimal(6,4)default NOT NULL
    check(value>=0.1 AND value <= 0.60),
    
);