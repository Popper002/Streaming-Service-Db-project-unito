CREATE TABLE IF NOT EXISTS Canale
(
    channel_name varchar(45)  NOT NULL,
    nickname varchar(20)
    iscritti integer DEFAULT 0,
    contenuti integer DEFAULT 0,
    social_media_list character varying(45),
    biografia character varying(280) 
    PRIMARY KEY nickname
);