CREATE DATABASE classicpress_gaia;

CREATE USER classicpress_gaia@localhost IDENTIFIED BY 'ilovegaia';

GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER
ON classicpress_gaia.*
TO classicpress_gaia@localhost;

FLUSH PRIVILEGES;
