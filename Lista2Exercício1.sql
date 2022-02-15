-- CREATE SCHEMA `db_generation_game_online,` ;

CREATE TABLE tb_classe(
id_classe INT NOT NULL AUTO_INCREMENT,
grupo VARCHAR(255),
tipo VARCHAR(255),
funcao VARCHAR(255),
PRIMARY KEY (id_classe)
);
CREATE TABLE tb_personagem(
id_personagem INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
idade INT NOT NULL,
ataque INT NOT NULL,
defesa INT NOT NULL,
fk_classe INT NULL,
PRIMARY KEY (id_personagem),
FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe)
);
-- DROP
DROP TABLE tb_personagem;
DROP TABLE tb_classe;

-- INSERT
INSERT INTO tb_classe (grupo, tipo, funcao)
VALUES
("Alpha","Protagonista","Arqueiro"),
("Alpha","Secundario","Arqueiro"),
("Alpha","Antagonista","Arqueiro"),
("Alpha","Protagonista","Atirador"),
("Alpha","Antagonista","Atirador"),
("Alpha","Secundário","Atirador"),
("Beta","Protagonista","Arqueiro"),
("Beta","Secundario","Arqueiro"),
("Beta","Antagonista","Arqueiro"),
("Beta","Protagonista","Atirador"),
("Beta","Secundario","Atirador"),
("Beta","Antagonista","Atirador");

INSERT INTO tb_personagem (nome, idade, ataque, defesa, fk_classe)
VALUES
("James Jong", 27, 2500, 2100, 1),
("Beatrice Zugertz", 24, 2350, 2000, 7 ),
("Filinstro Zugertz", 58, 2600, 3000, 9 ),
("Ben Jong", 49, 2100, 2000, 5),
("Kiria Bounty", 21, 1900, 950, 8 ),
("Coby Dops", 17, 2150, 2150, 11),
("Jarbi Laven",35, 2000, 1950, 2 ),
("Maxwell Zugertz", 24, 1900, 2300, 6 ),
("Jade Laven" ,32, 1500, 2900, 12 );

-- SELECTS

SELECT * FROM tb_personagem WHERE ataque>2000;
SELECT * FROM tb_personagem WHERE defesa>1000 and defesa<2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "C%";



-- INNER JOIN
SELECT * FROM tb_classe
		INNER JOIN tb_personagem ON tb_personagem.id_personagem = tb_classe.id_classe;

SELECT * FROM tb_personagem-- ESQUERDA
		INNER JOIN tb_classe -- DIREITA
        ON  tb_classe.id_classe=tb_personagem.fk_classe
        WHERE tb_classe.funcao = "Arqueiro" ;
        
-- DELIMITEI MELHOR A SELEÇÃO
SELECT nome, funcao FROM tb_personagem-- ESQUERDA
		INNER JOIN tb_classe -- DIREITA
        ON  tb_classe.id_classe=tb_personagem.fk_classe
        WHERE tb_classe.funcao = "Arqueiro" ;
        
SELECT nome, grupo FROM tb_personagem
	INNER JOIN tb_classe
	ON  tb_classe.id_classe=tb_personagem.fk_classe
	WHERE nome LIKE '%Zugertz' ;	
    
SELECT * FROM tb_classe
SELECT * FROM tb_personagem

--