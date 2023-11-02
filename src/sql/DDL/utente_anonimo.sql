CREATE TABLE UTENTE_ANONIMO 
(
    ip_address varchar(32) NOT NULL CHECK (char_lenght (ip_address) = 32), 
    CONSTRAINT valid_op CHECK (ip_address ~* '[0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + +$') -- TODO: error here
    
);