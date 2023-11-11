 --@block initialize Utente
CREATE TABLE IF NOT EXISTS Utente
(
      nickname varchar(45) NOT NULL,--varchar : stringhe con lunghezza varibile ,l'argomento indica un max di lunghezza
      email varchar(45) NOT NULL,
      password varchar(45) NOT NULL,
      DataRegistrazione TIMESTAMP(2) NOT NULL DEFAULT CURRENT_TIMESTAMP,
      PRIMARY KEY (email),


    Constraint user_valid_email CHECK (
        email ~ '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'
    )
);


CREATE TABLE IF NOT EXISTS Utente_registrato
(
    nickname varchar (45) NOT NULL,
    email varchar(45) NOT NULL, 
    DataRegistrazione TIMESTAMP(2) NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    NumeroDiTelefono char (10)
    affiliate BOOLEAN
	PRIMARY KEY (nickname),
    Constraint user_valid_email CHECK (
        email ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'
    )
     

)INHERITS (Utente);


CREATE TABLE IF NOT EXISTS Utente_anonimo
(
    ip_address varchar(32), 
    check_ip integer DEFAULT 0 NOT NULL,
    CONSTRAINT check_ip_range CHECK (check_ip >= 0 AND check_ip <= 255),
    PRIMARY KEY (ip_address),
    CONSTRAINT user_valid_ip CHECK (
        ip_address ~ '^(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5])).(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5])).(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5])).(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5]))$'
    )
) INHERITS(Utente);