CREATE  TABLE UTENTE {
      nickname varchar(45) NOT NULL,--varchar : stringhe con lunghezza varibile ,l'argomento indica un max di lunghezza
      email varchar(45),
      password varchar(45) NOT NULL,
      DataRegistrazione TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
      PRIMARY KEY (email) 


    Constraint user_valid_email CHECK (
        email ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'
    )
}
