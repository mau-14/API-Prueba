CREATE DATABASE IF NOT EXISTS wewelcom_db;

USE wewelcom_db;


CREATE TABLE IF NOT EXISTS restaurante (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(255)
);

INSERT INTO restaurante (nombre, telefono, direccion) VALUES
('DiverXO', '+34 915 70 07 66', 'NH Eurobuilding, Calle de Padre Damián, 23, 28036 Madrid'),
('Botín', '+34 913 66 42 17', 'Calle de los Cuchilleros, 17, 28005 Madrid'),
('Casa Lucio', '+34 913 65 32 52', 'Calle de la Cava Baja, 35, 28005 Madrid'),
('StreetXO', '+34 915 31 98 84', 'Calle de Serrano, 52, 28001 Madrid'),
('Ramon Freixa Madrid', '+34 917 81 82 62', 'Calle de Claudio Coello, 67, 28001 Madrid'),
('El Club Allard', '+34 915 59 09 39', 'Calle de Ferraz, 2, 28008 Madrid'),
('Sacha', '+34 913 45 59 52', 'Calle de Juan Hurtado de Mendoza, 11, 28036 Madrid'),
('Viridiana', '+34 915 23 44 78', 'Calle de Juan de Mena, 14, 28014 Madrid'),
('DSTAgE', '+34 917 02 15 86', 'Calle de Regueros, 8, 28004 Madrid'),
('Paco Roncero Restaurante', '+34 914 29 92 64', 'Calle de Alcalá, 15, 28014 Madrid');

