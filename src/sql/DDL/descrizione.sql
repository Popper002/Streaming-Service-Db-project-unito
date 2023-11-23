CREATE TABLE IF NOT EXISTS Descrizione (
    nome varchar(20),
    social text default NULL,
    biografia text default NULL,
    FOREIGN KEY (nome) REFERENCES Canale(nickname) ON DELETE CASCADE,
    constraint link_valid check (
  social ~ '^((http|https)://)(www.)?[a-zA-Z0-9@:%.
            \+~#?&//=]{2,256}\.
            [a-z]{2,6}\b([-a-zA-Z0-9@:%.
            \+~#?&//=]*)$'
)

);

