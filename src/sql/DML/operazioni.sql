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
  select nickname, iscritti, RANK() OVER (ORDER BY iscritti DESC) AS rank
  from Canale

  GROUP BY iscritti where MAX(iscritti)  
) -- TODO: da riguardare non mi convince 
