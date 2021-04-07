CREATE DATABASE caso2;
\c caso2;

CREATE TABLE alumnos(
    rut VARCHAR(20) PRIMARY KEY,
    nombre_alumno VARCHAR(50)
);

CREATE TABLE profesores(
    id SERIAL PRIMARY KEY,
    nombre_profesor VARCHAR(50),
    departamento VARCHAR(50)
);

CREATE TABLE cursos(
    nombre_curso VARCHAR(50),
    rut_alumno VARCHAR(20),
    FOREIGN KEY (rut_alumno) REFERENCES alumnos(rut)
);

CREATE TABLE pruebas(
    puntaje SMALLINT,
    id_profesor INT,
    rut_alumno VARCHAR(20),
    FOREIGN KEY (rut_alumno) REFERENCES alumnos(rut),
    FOREIGN KEY (id_profesor) REFERENCES profesores(id)
);