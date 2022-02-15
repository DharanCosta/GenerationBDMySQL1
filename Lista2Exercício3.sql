-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_farmacia_do_bem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_farmacia_do_bem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_farmacia_do_bem` ;
USE `db_farmacia_do_bem` ;

-- -----------------------------------------------------
-- Table `db_farmacia_do_bem`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmacia_do_bem`.`tb_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `setor` INT NOT NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_farmacia_do_bem`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_farmacia_do_bem`.`tb_produto` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `data` DATE NOT NULL,
  `quantEstoque` INT NOT NULL,
	preco FLOAT NOT NULL,
  `fk_categoria` INT NULL,
  PRIMARY KEY (`id_produto`),
  INDEX `fk_categoria_idx` (`fk_categoria` ASC) VISIBLE,
  CONSTRAINT `fk_categoria`
    FOREIGN KEY (`fk_categoria`)
    REFERENCES `db_farmacia_do_bem`.`tb_categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

DROP TABLE tb_produto;
DROP TABLE tb_categoria;

INSERT INTO tb_categoria( tipo, descricao, setor)
VALUES
("Eletrodoméstico ", "Produto eletrônico para casa", 1 ),
("Eletrônicos", "Produto eletrônico de informática",2 ),
("Decorativos", "Objetos decorativO para casa", 3 ),
("Organizadores", "Produtos para organizar a casa", 4 ),
("Decorativos Área-Externa", "Objetos decorativos para área externa", 5 );

INSERT INTO tb_produto (nome, `data`, quantEstoque, preco, fk_categoria)
VALUES 
("Cadeira de Jardim","2022-01-18", 44, 149.0, 5),
("Cadeira de Jantar","2022-01-21", 23, 249.0, 3),
("Televisão - Smart Tv","2021-12-08", 444, 2599.0, 2),
("Batedeira","2021-05-24", 54, 349.0, 1),
("Air-Fryer","2021-03-28", 32, 759.0, 1),
("Cadeira de Jardim","2022-02-18", 4, 149.0, 5),
("Armário Cozinha - Lizo","2021-06-25", 35,1159.0,4),
("Sapateira","2021-02-06", 64, 399.0, 4),
("Mesa de Jardim","2021-03-14", 30, 699.0, 5),
("Mesa de Jantar","2022-01-18", 74, 1249.0, 3),
("Aparador de Louça","2021-01-03", 37, 799.0, 3),
("Tapete para cozinha","2021-10-18", 30, 49.0, 3);

-- SELECT

SELECT * FROM tb_produto WHERE preco>50.0;
SELECT * FROM tb_produto WHERE preco BETWEEN 30.0 AND 600.0;
SELECT * FROM  tb_produto WHERE nome LIKE "B%";

SELECT * FROM tb_categoria
	INNER JOIN tb_produto ON tb.categoria.id_categoria = tb.produto.fk_categoria;

SELECT * FROM tb_categoria
	INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria
    WHERE tb_categoria.tipo = "Decorativos Área-Externa" ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
