CREATE TABLE UTENTE_ANONIMO 
{
    ip_address varchar(32) NOT NULL CHECK (char_lenght (ip_address) = 32), 
    Constraint valid_ip CHECK
    {
        ip_address ~* '[0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + +$'
    }
}