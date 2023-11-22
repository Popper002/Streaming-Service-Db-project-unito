CREATE TYPE contents AS ENUM ('live', 'video', 'clip');
CREATE TABLE IF NOT EXISTS Canale
(
    nickname varchar(20) PRIMARY KEY UNIQUE,
	FOREIGN KEY (nickname) REFERENCES Utente_registrato(nickname),
    iscritti integer DEFAULT 0,
    social_media_list varchar(45),
    biografia varchar(280)
);