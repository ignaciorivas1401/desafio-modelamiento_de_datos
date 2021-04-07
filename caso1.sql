CREATE DATABASE caso1;
\c caso1;

CREATE TABLE trabajadores(
    rut VARCHAR(50) PRIMARY KEY,
    nombre_trabajador VARCHAR(50),
    direccion VARCHAR(100)
);

CREATE TABLE departamentos(
    nombre_depto VARCHAR(50) NOT NULL,
    rut_trabajador VARCHAR(50),
    FOREIGN KEY (rut_trabajador) REFERENCES trabajadores(rut)
);

CREATE TABLE liquidaciones(
    ruta_drive VARCHAR(150),
    rut_trabajador VARCHAR(50),
    FOREIGN KEY (rut_trabajador) REFERENCES trabajadores(rut)
);

