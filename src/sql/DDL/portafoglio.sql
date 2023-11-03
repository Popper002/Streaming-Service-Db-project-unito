CREATE TABLE portafoglio
(
    nickname varchar(45) default NOT NULL,
    Foreign Key (nickname) REFERENCES utente_registrato(nickname),
    saldo_bit float default NULL,

)