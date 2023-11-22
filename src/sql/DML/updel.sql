UPDATE Utente_registrato
SET affiliate = TRUE
WHERE nickname IN (SELECT nickname FROM IsAffiliate);

DELETE FROM Utente_registrato WHERE nickname = 'riccardo';
DELETE FROM Utente_registrato WHERE nickname = 'francesco';
DELETE FROM contenuti WHERE url ='questnonèunsito.com';
DELETE FROM contenuti WHERE clip = 'www.sitononpuntocom';
DELETE FROM contenuti WHERE live ='sitopropripsbagliato';

UPDATE portafoglio WHERE Bit saldo_bit  is=  > 0


DELETE FROM portafoglio WHERE saldo_bit <0 
DELETE FROM portafoglio WHERE nickname = NULL
DELETE FROM chat WHERE nick_ricevente = NULL 
DELETE FROM chat WHERE nick_mandante = NULL
DELETE FROM chat WHERE messaggio = NULL 
DELETE FROM calendario WHERE titolo_futuro =NULL
DELETE FROM calendario WHERE tempo =NULL
DELETE FROM canale
  WHERE nickname IN (SELECT nickname FROM utente_registrato WHERE nickname = 'riccardo');
DELETE FROM utente_registrato 
WHERE email = NULL
DELETE FROM utente_registrato
WHERE nickname NOT IN (SELECT nickname FROM canale);  