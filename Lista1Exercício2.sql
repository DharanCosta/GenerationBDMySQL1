-- CREATE

CREATE TABLE tb_produtos(
id_prod INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
tipo VARCHAR(255),
cor VARCHAR(255),
dataentrada DATE NULL,
preco FLOAT NOT NULL,
PRIMARY KEY (id_prod)
);
-- INSERT
INSERT INTO tb_produtos (nome, tipo, cor, dataentrada, preco)
VALUES
("Televisão", "Eletrônico", "Preto",'2020/05/25', 1500.0);
INSERT INTO tb_produtos (nome, tipo, cor, dataentrada, preco)
VALUES
("Cadeira Gamer", "Objeto", "Cinza",'2021/06/18', 499.0);
INSERT INTO tb_produtos (nome, tipo, cor, dataentrada, preco)
VALUES
("Secador de cabelo", "Eletrodoméstico", "Vinho",'2021/07/28', 199.0);
INSERT INTO tb_produtos (nome, tipo, cor, dataentrada, preco)
VALUES
("Chapinha", "Eletrodoméstico", "Azul Escuro",'2020/01/15', 169.0);
INSERT INTO tb_produtos (nome, tipo, cor, dataentrada, preco)
VALUES
("Espelho 80x70cm", "Objeto", "Branco",'2021/04/13', 299.0);
INSERT INTO tb_produtos (nome, tipo, cor, dataentrada, preco)
VALUES
("Headseat","Eletrônico", "Branco",'2021/12/02', 599.0);
INSERT INTO tb_produtos (nome, tipo, cor, dataentrada, preco)
VALUES
("Teclado", "Eletrônico", "Preto",'2020/07/28', 99.0);

-- SELECT
SELECT nome,preco FROM tb_produtos WHERE preco>500.0;

SELECT nome,preco FROM tb_produtos WHERE preco<500.0;

-- UPDATE

UPDATE tb_produtos
SET preco = 699.0
WHERE id_prod=2;

-- SHOW TABLE

SELECT * FROM tb_produtos

-- DROP 
-- DROP TABLE tb_produtos ;


