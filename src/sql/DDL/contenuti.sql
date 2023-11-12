CREATE TABLE IF NOT EXISTS contenuti(
    live integer DEFAULT 0 ,
    video integer default 0,
    clip integer default 0,
    url varchar(45),
    PRIMARY KEY ( url)
); 