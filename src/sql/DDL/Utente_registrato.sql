--@block initialize Utente registrato
CREATE TABLE IF NOT EXISTS Utente_registrato
(
    nickname varchar (45),
    PRIMARY KEY (nickname),
    streaner BOOLEAN DEFAULT FALSE,
    email varchar(45), 
    DataRegistrazione TIMESTAMP(2) NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    NumeroDiTelefono char (10),
    affiliate BOOLEAN DEFAULT FALSE,
    Constraint user_valid_email CHECK (
        email ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'
    )
     

);

