CREATE TABLE UTENTE_ANONIMO 
{
    ip_address varchar(32) NOT NULL, 
    Constraint valid_ip CHECK
    {
        ip_address ~* '[0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + [0-9.] + +$'
    }
}