CREATE TABLE IF NOT EXISTS struttura
(
    visibilità integer default 0 , 
    categoria varchar(50),
    data DATE default CURRENT_DATE, 
    tag VARCHAR(15),
    titolo varchar(45), 
   constraint check_tag check ( tag ~ '#[0-9 a-z A-Z]'),
    duranta float ,  
    PRIMARY KEY ( titolo, durata)
); 