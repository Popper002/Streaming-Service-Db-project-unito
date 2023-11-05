--@block intialize Spettatore
CREATE VIEW Spettatore AS(               --https://www.postgresql.org/docs/current/tutorial-inheritance.html
    SELECT ip_adress FROM utente_anonimo
);