CREATE DATABASE  db_cidade_das_frutas;

CREATE TABLE IF NOT EXISTS `db_cidade_das_frutas`.`tb_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `setor` INT NOT NULL,
  PRIMARY KEY (`id_categoria`)
  );

CREATE TABLE IF NOT EXISTS `db_cidade_das_frutas`.`tb_produto` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `data` DATE NOT NULL,
  `quantEstoque` INT NOT NULL,
	preco FLOAT NOT NULL,
  `fk_categoria` INT NULL,
  PRIMARY KEY (`id_produto`),
FOREIGN KEY (`fk_categoria`)
REFERENCES `db_cidade_das_frutas`.`tb_categoria` (`id_categoria`)
);


INSERT INTO tb_categoria( tipo, descricao, setor)
VALUES
("Frutas Frescas ", "Produto Orgânico", 1 ),
("Frutas Secas", "Produto Importado",2 ),
("Legumes", "Produto Orgânico", 3 ),
("Verduras", "Produto Orgânico", 4 ),
("Outro", "Outro produto", 5 );

INSERT INTO tb_produto (nome, `data`, quantEstoque, preco, fk_categoria)
VALUES 
("Bombom","2022-01-18", 1440, 2.5, 5),
("Ameixas Secas","2022-01-21", 230, 35.0, 2),
("Amoras ","2021-12-08", 444, 25.3, 1),
("Maçã","2021-05-24", 540, 15.5, 1),
("Banana Nanica","2021-03-28", 320, 14.5, 1),
("Brownie","2022-02-18", 10, 8.5, 5),
("Alface","2021-06-25", 50, 9.99, 4),
("Couve","2021-02-06", 64, 10.9, 4),
("Abobrinha","2021-03-14", 30, 6.90, 3),
("Couve-Flor","2022-01-18", 174, 12.0, 3),
("Brócolis","2021-01-03", 370,18.0, 3),
("Aspargos","2021-10-18", 330, 39.0, 3);

-- SELECT

SELECT * FROM tb_produto WHERE preco>15.0;
SELECT * FROM tb_produto WHERE preco BETWEEN 30.0 AND 40.0;
SELECT * FROM  tb_produto WHERE nome LIKE "C%";

SELECT * FROM tb_categoria
	INNER JOIN tb_produto ON tb.categoria.id_categoria = tb.produto.fk_categoria;

SELECT * FROM tb_categoria
	INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria
    WHERE tb_categoria.tipo = "Legumes" ;
