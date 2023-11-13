CREATE TABLE IF NOT EXISTS Canale
(
    nickname varchar(20),
	PRIMARY KEY (nickname),
    iscritti integer DEFAULT 0,
    social_media_list varchar(45),
    FOREIGN KEY ( social_media_list)
    REFERENCES descrizione(social), --Dato deribale da tabella descrione possibile ridontanda bhoooo ??!?!?!!
    biografia varchar(280)

);

--CREATE TYPE contents AS ENUM ('live', 'video', 'clip');

CREATE TABLE Contiene (
    id SERIAL PRIMARY KEY,
    media_name VARCHAR(255),
    contents contents,
    duration_seconds FLOAT,
    content contents,
    canale_nickname varchar(20),
    CONSTRAINT to_catalog CHECK (
        content = CASE
                WHEN duration_seconds > 60 then 'video'
                ELSE 'clip'
            END
    ),
        CONSTRAINT fk_canale
        FOREIGN KEY (canale_nickname)
        REFERENCES Canale(nickname)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);