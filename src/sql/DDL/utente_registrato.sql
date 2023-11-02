CREATE TABLE UTENTE_REGISTRATO
{
    nickname varchar (45) NOT NULL,
    email varchar(45) NOT NULL, 
    DataRegistrazione TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    PRIMARY KEY (email)
    

}