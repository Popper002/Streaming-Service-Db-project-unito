[ ]   Cose da aggiungere sull'e-r gigante {mancano attributi su Utente , (ip_address , iscritti canale ,calendario ) } CONFRONTARSI CON I FILE .SQL 
[ ]     Referenziare (da capire cosa). 

[ ]   INSERIRE ULTERIORI BUSINESS RULES

[ ]   E-R RIDOTTO { * Attributi registrazione su Utente registrato 
                    * }

[ ]   ANALISI DELLE RIDONDANZE 

[ ]   Eventuale partizionamento/accorpamento di entità e associazioni (con motivazione
delle scelte effettuate)

[ ]  Eventuale scelta degli identificatori principali (con motivazione delle scelte
effettuate)

[ ]  Schema relazionale (con indicazione dei vincoli di integrità referenziale).

[ ] 
* IMPLENTAZIONE

[ ]  DDL di creazione del database.  

[ ] DML di popolamento di tutte le tabelle del database.
Consiglio: se popolate il database con dati verosimili potreste rendervi conto di errori commessi
nella fase di progettazione concettuale e di cui avreste dovuto rendervi conto prima.

[ ] Qualche operazione di cancellazione e modifica per verificare i vincoli e gli effetti causati da
operazioni su chiavi esterne.


--- 
cose da chiedere
- chiave esterna in contenuti
- ip (forse ha letto id)
- cardinalità mancanti ma non mancati, il mistero si infittisce
- come si identifica nelle relazione



## CRITICITÀ 
- Trailer e altri attributi mancano all'entità canale 
- Chat potrebbe essere collegata a live invece che a Streamer-Spettatore 
- Lo schema E-R ora come ora non permette di accedere ai canali e ai suoi contenuti agli utenti anonimi 
- 