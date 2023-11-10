CREATE TABLE IF NOT EXISTS Canale
(
    channel_name character varying(45)  NOT NULL,
    iscritti integer DEFAULT 0,
    contenuti integer DEFAULT 0,
    social_media_list character varying(45),
    biografia character varying(280) 
);