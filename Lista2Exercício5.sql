CREATE DATABASE  db_construindo_a_nossa_vida;

CREATE TABLE IF NOT EXISTS `db_construindo_a_nossa_vida`.`tb_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `setor` INT NOT NULL,
  PRIMARY KEY (`id_categoria`)
  );

CREATE TABLE IF NOT EXISTS `db_construindo_a_nossa_vida`.`tb_produto` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `data` DATE NOT NULL,
  `quantEstoque` INT NOT NULL,
	preco FLOAT NOT NULL,
  `fk_categoria` INT NULL,
  PRIMARY KEY (`id_produto`),
FOREIGN KEY (`fk_categoria`)
REFERENCES `db_construindo_a_nossa_vida`.`tb_categoria` (`id_categoria`)
);

DROP TABLE tb_produto;
DROP TABLE tb_categoria;



INSERT INTO tb_categoria( tipo, descricao, setor)
VALUES
("Ferramentas", "Ferramentas para construção", 1 ),
("Madeiras", "A madeira é obtida a partir do corte das árvores",2 ),
("Pedras", "A pedra é um material mineral sólido, duro, da natureza das rochas", 3 ),
("Telhas", "Utilizada na cobertura de casas e outras edificações.", 4 ),
("Piso", "Revestimento do solo sobre o qual se caminha, conhecido também como pavimento.", 5 ),
("Outros", "Outros produtos", 6 );

INSERT INTO tb_produto (nome, `data`, quantEstoque, preco, fk_categoria)
VALUES 
("Laminado","2022-01-18", 1440,250.0, 5),
("Peroba","2022-01-21", 2030, 90.0, 2),
("Martelo","2021-12-08", 350, 56.0, 1),
("Enxada","2021-05-24", 540, 75.0, 1),
("Alicate","2021-03-28", 320, 65.5, 1),
("Vinil","2022-02-18", 1040, 300.0, 5),
("Telha de Argila","2021-06-25", 2050, 25.00, 4),
("Telha de Metal","2021-02-06", 3000, 69.9, 4),
("Pedra britada","2021-03-14", 3080, 15.90, 3),
("Pedra Rachãor","2022-01-18", 1074, 26.0, 3),
("Pedra Madeira","2021-01-03", 3070,35.0, 3),
("Removedor de tinta","2021-10-18", 230, 89.0, 6);

-- SELECT

SELECT * FROM tb_produto WHERE preco>50.0;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.0 AND 60.0;
SELECT * FROM  tb_produto WHERE nome LIKE "C%";

SELECT * FROM tb_categoria
	INNER JOIN tb_produto ON tb.categoria.id_categoria = tb.produto.fk_categoria;

SELECT * FROM tb_categoria
	INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria
    WHERE tb_categoria.tipo = "Pedras" ;