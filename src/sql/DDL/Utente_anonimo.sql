--@block initalize Utente anonimo
CREATE TABLE IF NOT EXISTS Utente_anonimo
(
    ip_address varchar(32), 
    check_ip integer DEFAULT 0 NOT NULL,
    CONSTRAINT check_ip_range CHECK (check_ip >= 0 AND check_ip <= 255),
    PRIMARY KEY (ip_address),
    CONSTRAINT user_valid_ip CHECK (
        ip_address ~ '^(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5])).
                     (\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5])).
                     (\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5])).
                     (\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5]))$'
    )
);