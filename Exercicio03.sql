-- Cria o Banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Seleciona o Banco de dados para uso
USE db_pizzaria_legal;

-- Cria a tabela Categorias
CREATE TABLE tb_categorias (
id BIGINT NOT NULL AUTO_INCREMENT,
tamanho VARCHAR(255) NOT NULL,
borda VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
  );
  
  -- Insere dados na tabela Categorias
INSERT INTO tb_categorias (tamanho, borda)
VALUES ("Broto", "nao");

INSERT INTO tb_categorias (tamanho, borda)
VALUES ("Média", "sim");

INSERT INTO tb_categorias (tamanho, borda)
VALUES ("Gigante", "sim");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criando tabela
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome varchar(255) NOT NULL,
recheioborda varchar (255),
tipomassa varchar (255) NOT NULL,
valor int NOT NULL,
categorias_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_pizzas
INSERT INTO tb_pizzas (nome, recheioborda, tipomassa, valor, categorias_id)
VALUES ("Calabresa", "Catupiry", "incrementada", 58.00, 3);

INSERT INTO tb_pizzas (nome, recheioborda, tipomassa, valor, categorias_id)
VALUES ("Brocólis", " ", "tradicional", 29.00, 1);

INSERT INTO tb_pizzas (nome, recheioborda, tipomassa, valor, categorias_id)
VALUES ("Americana", "Cheddar", "siciliana", 47.00, 2);

INSERT INTO tb_pizzas (nome, recheioborda, tipomassa, valor, categorias_id)
VALUES ("Frango", "Cheddar", "siciliana", 47.00, 2);

INSERT INTO tb_pizzas (nome, recheioborda, tipomassa, valor, categorias_id)
VALUES ("Palmito", "Catupiry", "incrementada", 58.00, 3);

INSERT INTO tb_pizzas (nome, recheioborda, tipomassa, valor, categorias_id)
VALUES ("Nutella", " ", "tradicional", 29.00, 1);

INSERT INTO tb_pizzas (nome, recheioborda, tipomassa, valor, categorias_id)
VALUES ("Mussarela", " ", "tradicional", 29.00, 1);

INSERT INTO tb_pizzas (nome, recheioborda, tipomassa, valor, categorias_id)
VALUES ("Portuguesa", "cheddar", "tradicional", 58.00, 3);

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_pizzas;

-- Exibir conforme condição
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- Exibir conforme condição
SELECT * FROM tb_pizzas WHERE valor between 50.00 AND 100.00;

-- Exibir conforme condição
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

-- Intersecção
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

-- Intersecção exibindo dado específico
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.tamanho = "Broto";
