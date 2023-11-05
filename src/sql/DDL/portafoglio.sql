--@block initialize Portafoglio
CREATE TABLE Portafoglio
(
    nickname varchar(45) default NOT NULL,
    Foreign Key (nickname) REFERENCES utente_registrato(nickname),
    saldo_bit float default 0,

)