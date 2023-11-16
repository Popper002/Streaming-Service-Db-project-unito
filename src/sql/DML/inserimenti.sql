--alter table chat
--add messaggio varchar(100);

INSERT INTO calendario(titolo_futuro ,iniziio)
VALUES('LIVE FUTURISTICA','20/12/2021'); 
INSERT INTO chat(messaggio,nick_mandante,nick_ricevente,tempo)
VALUES('ciaoquestoèunmessaggio','riccardo','francesco',CURRENT_TIMESTAMP);
INSERT INTO chat(pubblica,messaggio,nick_mandante,nick_ricevente)
VALUES(TRUE,'test1','riccardo',NULL);
INSERT INTO chat()