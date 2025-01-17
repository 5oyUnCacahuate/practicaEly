-- Crear la tabla TRABAJADOR
create database practicaEly;

use practicaEly;

CREATE TABLE TRABAJADOR (
    ID_T INT PRIMARY KEY,
    NOMBRE VARCHAR(50),
    TARIFA DECIMAL(5,2),
    OFICIO VARCHAR(50),
    ID_SUPV INT
);

-- Crear la tabla EDIFICIO
CREATE TABLE EDIFICIO (
    ID_E INT PRIMARY KEY,
    DIR VARCHAR(50),
    TIPO VARCHAR(50),
    NIVEL_CALIDAD INT,
    CATEGORIA INT
);

-- Crear la tabla ASIGNACION
CREATE TABLE ASIGNACION (
    ID_T INT,
    ID_E INT,
    FECHA_INICIO DATE,
    NUM_DIAS INT,
    FOREIGN KEY (ID_T) REFERENCES TRABAJADOR(ID_T),
    FOREIGN KEY (ID_E) REFERENCES EDIFICIO(ID_E)
);

-- Insertar datos en la tabla TRABAJADOR
INSERT INTO TRABAJADOR (ID_T, NOMBRE, TARIFA, OFICIO, ID_SUPV) VALUES
(1235, 'M. FARADAY', 12.5, 'ELECTRICISTA', 1311),
(1311, 'C. COULOMB', 15.5, 'ELECTRICISTA', 1311),
(1412, 'C. NEMO', 13.75, 'FONTANERO', 1520),
(1520, 'H. RICKOVER', 11.75, 'FONTANERO', 1520),
(2920, 'R. GARRET', 10.0, 'ALBA�IL', 2920),
(3001, 'J. BARRISTER', 8.2, 'CARPINTERO', 3231),
(3231, 'P. MASON', 17.4, 'CARPINTERO', 3231);

-- Insertar datos en la tabla EDIFICIO
INSERT INTO EDIFICIO (ID_E, DIR, TIPO, NIVEL_CALIDAD, CATEGORIA) VALUES
(111, '1213 ASPEN', 'OFICINA', 4, 1),
(210, '1011 BIRCH', 'OFICINA', 3, 1),
(312, '123 ELM', 'OFICINA', 2, 2),
(435, '456 MAPLE', 'COMERCIO', 1, 1),
(460, '1415 BEACH', 'ALMACEN', 3, 3),
(515, '789 OAK', 'RESIDENCIA', 3, 2);

-- Insertar datos en la tabla ASIGNACION
INSERT INTO ASIGNACION (ID_T, ID_E, FECHA_INICIO, NUM_DIAS) VALUES
(1235, 312, '2001-10-10', 5),
(1235, 515, '2001-10-17', 22),
(1311, 435, '2001-10-08', 12),
(1311, 460, '2001-10-23', 24),
(1412, 111, '2001-12-01', 4),
(1412, 210, '2001-11-15', 12),
(1412, 312, '2001-10-01', 10),
(1412, 435, '2001-10-15', 15),
(1412, 460, '2001-10-08', 18),
(1412, 515, '2001-11-05', 8),
(1520, 312, '2001-10-30', 17),
(1520, 515, '2001-10-09', 14),
(2920, 210, '2001-11-10', 15),
(2920, 435, '2001-10-28', 10),
(2920, 460, '2001-10-05', 18),
(3001, 111, '2001-10-08', 14),
(3001, 210, '2001-10-27', 14),
(3231, 111, '2001-10-10', 8),
(3231, 312, '2001-10-24', 20);


select * from ASIGNACION;