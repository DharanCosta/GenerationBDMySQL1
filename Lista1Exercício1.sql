-- CREATE

CREATE TABLE tb_funcionaries(
id_funcionarios INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
email VARCHAR(255),
senha VARCHAR(255),
aniver DATE NULL,
salario FLOAT NOT NULL,
PRIMARY KEY (id_funcionarios)
);
-- INSERT
INSERT INTO tb_funcionaries (nome, email, senha, aniver, salario)
VALUES
("Bart Boaz", "bart@email.com", "134652",'1990/05/25', 2500.0);
INSERT INTO tb_funcionaries (nome, email, senha, aniver, salario)
VALUES
("Jamile Boaz", "Jamilesz@email.com", "134652",'1991/08/05', 2300.0);
INSERT INTO tb_funcionaries (nome, email, senha, aniver, salario)
VALUES
("Carla Boaz", "CarlinhaBz@email.com", "134652",'1985/12/08', 2750.0);
INSERT INTO tb_funcionaries (nome, email, senha, aniver, salario)
VALUES
("Pablo Guerra", "pguerra@email.com", "134652",'1982/04/19', 1900.0);
INSERT INTO tb_funcionaries (nome, email, senha, aniver, salario)
VALUES
("Sandra Boaz", "sanboaz@email.com", "134652",'1986/05/07', 2900.0);

-- SELECT
SELECT nome,salario FROM tb_funcionaries WHERE salario>2000.0;

SELECT nome,salario FROM tb_funcionaries WHERE salario<2000.00;

-- UPDATE

UPDATE tb_funcionaries
SET email = "JamileJamil@email.com"
WHERE id_funcionarios=2;

-- SHOW TABLE
SELECT * FROM tb_funcionaries 

-- DROP 
DROP TABLE tb_funcionaries ;


