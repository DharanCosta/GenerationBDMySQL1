
CREATE TABLE tb_categoria(
id_cat INT NOT NULL AUTO_INCREMENT,
grupo VARCHAR(255),
classificacao VARCHAR(255),
ingredientes VARCHAR(255),
PRIMARY KEY (id_cat)
);

CREATE TABLE tb_pizza(
id_pizza INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
ingredientes VARCHAR(255) NOT NULL,
preco FLOAT NOT NULL,
fk_cat INT NOT NULL,
PRIMARY KEY (id_pizza),
FOREIGN KEY (fk_cat) REFERENCES tb_categoria (id_cat)
);
DROP TABLE tb_pizza;
DROP TABLE tb_categoria;


INSERT INTO tb_categoria(grupo, classificacao, ingredientes)
VALUES
("Pizza Salgada","Tradicional", "<5"), -- 1
("Pizza Salgada","Premium", ">5"), -- 2
("Pizza Salgada","Extra-Premium", ">7"), -- 3
("Pizza Doce","Tradicional", "<3"), -- 4
("Pizza Doce","Premium", ">3");  -- 5

INSERT INTO tb_pizza(nome, ingredientes, preco, fk_cat)
VALUES
("Muçarela", "Queijo muçarela, molho de tomate e orégano", 38.0, 1),
("Calabresa","Linguiça calabresa, molho de tomate fresco, cebola e orégano salpicado" , 42.0, 1),
("Marguerita","Muçarela, tomate, manjericão, orégano e base de molho de tomate", 40.0, 1),
("Quatro Queijos", "Muçarela, catupiry, provolone e parmesão", 52.0, 2),
("Baiana", "Calabresa moída, ovos, pimenta, cebola e parmesão", 54.0, 2),
("Caipira","Frango desfiado, milho, catupiry, molho de tomate e orégano", 56.0,2),
("Amatriciana", "Muçarela, bacon,cebola, alho, tomate cereja, azeite oliva, pimenta do reino e parmesão",62.0,3),
("Brigadeiro","Chocolate ao leite e granulado",46.0, 4),
("Banana com Nutella","Banana, chocolate, Nutella e granulado", 52.0,5);

-- SELECTS

SELECT * FROM tb_pizza WHERE preco>45.0;
SELECT * FROM tb_pizza WHERE preco BETWEEN 29.0 AND 60.0;
SELECT * FROM tb_pizza WHERE nome LIKE "C%";

SELECT * FROM tb_categoria
	INNER JOIN tb_pizza ON tb_pizza.fk_cat = tb_categoria.id_cat;
    
SELECT * FROM tb_pizza
	INNER JOIN tb_categoria ON tb_categoria.id_cat = tb_pizza.fk_cat 
    WHERE tb_categoria.grupo = "Pizza Doce";
    
    
