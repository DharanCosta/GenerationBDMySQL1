-- CREATE

CREATE TABLE tb_escola(
id_aluno INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
nota INT NOT NULL,
email VARCHAR(255),
aniver DATE NULL,
mensalidade FLOAT NOT NULL,
PRIMARY KEY (id_aluno)
);
-- INSERT
INSERT INTO tb_escola (nome, nota, email, aniver, mensalidade)
VALUES
("Carlos Emanuel", 6, "carlosema@escola.com",'2001/07/25', 1600.0);
INSERT INTO tb_escola (nome, nota, email, aniver, mensalidade)
VALUES
("Paola Carrosel", 7, "paolacars@escola.com",'2002/08/15', 1500.0);
INSERT INTO tb_escola (nome, nota, email, aniver, mensalidade)
VALUES
("Samara Costa", 10, "samacostaa@escola.com",'2003/05/20', 1650.0);
INSERT INTO tb_escola (nome, nota, email, aniver, mensalidade)
VALUES
("Edna Pilares", 8, "ednapilares@escola.com",'2012/06/22', 1650.0);
INSERT INTO tb_escola (nome, nota, email, aniver, mensalidade)
VALUES
("Eugenio Slva", 9, "eugeniosil@escola.com",'2013/08/26', 1450.0);

-- SELECT
SELECT nome,nota FROM tb_escola WHERE nota>7;

SELECT nome,nota FROM tb_escola WHERE nota<=7;

-- UPDATE

UPDATE tb_escola
SET mensalidade = 1450.0
WHERE id_aluno=4;

-- SHOW TABLE

SELECT * FROM tb_escola

-- DROP 
-- DROP TABLE tb_produtos ;


