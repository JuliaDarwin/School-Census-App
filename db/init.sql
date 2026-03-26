-- Create the table for Persona
CREATE TABLE censo (
    dni VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecnac DATE NOT NULL,
    direccion VARCHAR(255),
    telf VARCHAR(20),
    foto VARCHAR(255)
);

-- (Optional) Insert one fake person just so the database isn't empty when you test it
INSERT INTO censo (dni, nombre, fecnac, direccion, telf, foto) 
VALUES ('12345678A', 'Juan Perez', '1990-05-15', 'Calle Falsa 123', '600111222', 'default.jpg');
