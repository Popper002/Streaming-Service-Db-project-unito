CREATE TABLE IF NOT EXISTS calendario
(
    titolo_futuro varchar(90) ,
    inizio TIMESTAMP,
    PRIMARY KEY(titolo_futuro,inizio)
);


