--@block intialize Utente_registrato
CREATE TABLE UTENTE_REGISTRATO
(
    nickname varchar (45) NOT NULL,
    email varchar(45) NOT NULL, 
    DataRegistrazione TIMESTAMP(2) NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    Constraint user_valid_email CHECK (
        email ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'
    )
        PRIMARY KEY (nickname)

);