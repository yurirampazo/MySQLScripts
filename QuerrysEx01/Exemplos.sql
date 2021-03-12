 -- Querys usadas durante a sessão de Banco de dados
 -- Criação do banco de dados db_estoque e da primeira tabela
 -- tb_marcas 
 
 
 -- Criar Banco de dados
create database db_estoque;

 -- Usar banco de dados para executar as Querys abaixo
use db_estoque;
 
 
 -- Criar Tabela
 CREATE TABLE tb_marcas(
    id bigint(5) AUTO_INCREMENT, -- Definindo como auto Incremente 1, 2, 3 ...
    nome varchar(20) NOT NULL,
    ativo boolean,
    PRIMARY KEY (id) -- Definir coluna id como chave primária
);

-- Inserir valores na tabela Marcas

INSERT INTO tb_marcas (nome, ativo) VALUES ("Nike", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("H&M", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Zara", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Louis Vuitton", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Adidas", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Uniqlo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Hermès", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Rolex", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Gucci", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Cartier", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Polo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Armany", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Fatal Surf", true);

select * from tb_marcas; -- Selecionar todos os valores na tebela Marcas
select * from tb_marcas where nome like "%ad%";
select * from tb_marcas where ativo = true;
USE db_estoque;
-- criando tabela com foreign key, referenciando a tabela de marcas.
CREATE table tb_produtos(
id bigint auto_increment,
nome varchar(30) not null,
preco decimal(10,2),
marca_id bigint not null,
primary key(id),
foreign key(marca_id) references tb_marcas(id)
);

DELETE from tb_marcas where id = 1;
-- populando a tabela
INSERT into tb_produtos (nome, preco, marca_id) values ("Camisa",22.99,2);
 DELETE from tb_marcas where id = 1;
 INSERT tb_produtos (nome, preco, marca_id) values ("Tenis", 339.99, 5);
 select * from tb_produtos;
 select * from tb_produtos where preco > 60;
 
