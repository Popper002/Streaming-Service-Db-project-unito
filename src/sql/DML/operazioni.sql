--@block Calcolo 1/giorno qualifica di affiliate. operazione batch
-- per essere affiliate: minimo 500 minuti trasmessi, media di 3 o più spettatori per stream, 50 o più follower
-- with create a Common Table Expression TODO REMOVE THIS 
-- Add the new column to the table

WITH IsAffiliate AS (
    SELECT nickname
    FROM Utente_registrato
    WHERE streamer = TRUE
    GROUP BY nickname
    HAVING SUM(minuti_trasmessi) >= 500 AND AVG(spettatori) >= 3 AND COUNT(follower) >= 50
)
UPDATE Utente_registrato
SET affiliate = TRUE
WHERE nickname IN (SELECT nickname FROM IsAffiliate);

--@block Calcolo 1/settimana classifica streamer più seguiti
WITH Ranking as(
  select nickname, iscritti, RANK_NUMBER() OVER (ORDER BY iscritti DESC) AS rank_streamer --forse ;'
  from Canale

  GROUP BY iscritti where MAX(iscritti)  
) -- TODO: da riguardare non mi convince 

--delete from calendario
  --  where titolo_futuro ~ '^[0-9].*$')--espressione regolare che ha sequenza di numeri con un . e fine corsa $
  
  --si può fare anche cosi usando l'identificativo per numeri \d

  DELETE FROM calendario WHERE titolo_futuro ~'^\d.*$' --non voglio avere titoli solo con numeri 
  --cosi evitiamo le seguenti casistiche . -inserimento numero di telefono in campo errato. -un ip_adress o altro nel campo.ADD
--documentation for regular expression postgresql https://www.sqlshack.com/working-with-regular-expressions-in-postgresql/
  