CREATE TABLE Portafoglio
(
    nickname varchar(45),
    Foreign Key (nickname) REFERENCES utente_registrato(nickname),
    saldo_bit float default 0

);