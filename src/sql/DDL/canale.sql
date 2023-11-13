CREATE TYPE contents AS ENUM ('live', 'video', 'clip');
CREATE TABLE IF NOT EXISTS Canale
(
    nickname varchar(20),
	FOREIGN KEY (nickname) REFERENCES Utente_registrato(nickname),
    iscritti integer DEFAULT 0,
    social_media_list varchar(45),
    FOREIGN KEY ( social_media_list)
    REFERENCES descrizione(social), --Dato deribale da tabella descrione possibile ridontanda bhoooo ??!?!?!!
    biografia varchar(280)

);

