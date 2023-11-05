--@block initialize Utente
CREATE  TABLE Utente
(
      nickname varchar(45) NOT NULL,--varchar : stringhe con lunghezza varibile ,l'argomento indica un max di lunghezza
      email varchar(45) NOT NULL,
      password varchar(45) NOT NULL,
      DataRegistrazione TIMESTAMP(2) NOT NULL DEFAULT CURRENT_TIMESTAMP,
      PRIMARY KEY (email) 


    Constraint user_valid_email CHECK (
        email ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'
    )
    -- TODO: same error as utente anonimo

);
