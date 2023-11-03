CREATE TABLE utente_anonimo
(
    ip_address char(32) NOT NULL, 
    CREATE DOMAIN check_ip as integer DEFAULT NOT NULL 
    CHECK(check_ip >=0 AND check_ip <= 255)
    Constraint user_valid_ip CHECK (
        check_ip ~* '^(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5])).(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5])).(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5])).(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5]))$'
    )
    PRIMARY KEY (ip_address)
    
);
