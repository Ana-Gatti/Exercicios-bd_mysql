-- Criando database
CREATE DATABASE db_generation_game_online;

-- Selecionando o Banco de Dados
USE db_generation_game_online;

-- Criando tabela
CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
habilidade varchar(255) NOT NULL,
arma varchar(255) NOT NULL, 
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_classe
INSERT INTO tb_classe (tipo, habilidade, arma)
VALUES ("Cavaleiro", "lutas", "espadas");

INSERT INTO tb_classe (tipo, habilidade, arma)
VALUES ("Arqueiro", "ataque distante", "arco e flechas");

INSERT INTO tb_classe (tipo, habilidade, arma)
VALUES ("Mago", "feitiço", "magias");

INSERT INTO tb_classe (tipo, habilidade, arma)
VALUES ("Curandeiro", "Cura", "gaze");

INSERT INTO tb_classe (tipo, habilidade, arma)
VALUES ("Druida", "Gelo", "livro");

-- Exibir tabela
SELECT * FROM tb_classe;

-- Criando tabela
CREATE TABLE tb_personagem(
id BIGINT AUTO_INCREMENT,
nome varchar(255) NOT NULL,
nivel int NOT NULL,
ataque int NOT NULL, 
defesa int,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

-- Insere dados na tabela tb_personagem
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id)
VALUES ("Ataz", 100, 800, 300, 3);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id)
VALUES ("Olozor", 90, 600, 100, 3);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id)
VALUES ("Fralf", 200, 300, 300, 1);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id)
VALUES ("Kiog", 100, 200, 200, 1);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id)
VALUES ("Sassafras", 400, 90, 200, 4);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id)
VALUES ("Sally", 100, 60, 100, 4);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id)
VALUES ("Slurd", 500, 300, 200, 2);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id)
VALUES ("Grigs", 300, 300, 100, 5);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_personagem;

-- Exibir sob condição
SELECT * FROM tb_personagem WHERE ataque > 200;

-- Exibir dentro de um espaço de valor
SELECT * FROM tb_personagem WHERE defesa between 100 AND 200;

-- Exibir sob condição
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

-- Intersecção
SELECT * FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id;

-- Intersecção exibindo dado específico
SELECT * FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id
WHERE tb_classe.tipo = "Mago";
