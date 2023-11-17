--@block initialize Utente registrato
CREATE TABLE IF NOT EXISTS Utente_registrato
(
    nickname varchar (45) PRIMARY KEY UNIQUE,
    streamer BOOLEAN DEFAULT FALSE,
    email varchar(45), 
    password varchar(13) NOT NULL,
    DataRegistrazione DATE NOT NULL DEFAULT CURRENT_DATE, 
    NumeroDiTelefono char (10),
    affiliate BOOLEAN DEFAULT FALSE,
    Constraint user_valid_email CHECK (
        email ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'
    )
     

);

