-- criar banco de dados 
CREATE database db_cidade_das_carnes;
use db_cidade_das_carnes;
/* criar tabelas para mostrar id descrição e se ainda possui ou nao
no estoque. Ex: Parou de vender carne. Alterar carne para 1 = false*/
CREATE table tb_categorias(
id bigint auto_increment,
descricao varchar (55) not null,
ativo boolean not null,
primary key(id)
);
INSERT tb_categorias (descricao, ativo) value ("Bovino",true);
INSERT tb_categorias (descricao, ativo) value ("Suíno",true);
INSERT tb_categorias (descricao, ativo) value ("Aves",true);
INSERT tb_categorias (descricao, ativo) value ("Pertence Feijoada",true);
INSERT tb_categorias (descricao, ativo) value ("Imbtidos",true);
INSERT tb_categorias (descricao, ativo) value ("Outros",true);

SELECT * from tb_categorias;
CREATE table tb_produtos1(
id bigint auto_increment,
nome varchar (55) not null,
preco decimal (55) not null,
qtProduto int not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categorias (id)
);

INSERT tb_produtos1 (nome, preco, qtProduto, categoria_id) value ("Asa",40.00,30,3);
INSERT tb_produtos1 (nome, preco, qtProduto, categoria_id) value ("Picanha",20.00,30,1);
INSERT tb_produtos1 (nome, preco, qtProduto, categoria_id) value ("Costela",30.00,30,2);
INSERT tb_produtos1 (nome, preco, qtProduto, categoria_id) value ("Hamburguer",35.00,30,5);
SELECT * from tb_produtos1 where nome like "%pi%";
SELECT * from tb_produtos1 where preco in (20,30,40);
SELECT * from tb_produtos1 where preco between 15 and 30;
SELECT COUNT(*) from tb_produtos1;
SELECT * from tb_produtos1;
DELETE from tb_produtos1 where id=3;
DELETE from tb_produtos1 where id=4;
DELETE from tb_produtos1 where id=6;
SELECT COUNT(*) from tb_produtos1;
SELECT SUM(preco) from tb_produtos1;
SELECT SUM(qtProduto) from tb_produtos1;
SELECT avg(preco) from tb_produtos1;
SELECT avg(qtProduto) from tb_produtos1;

SELECT nome, preco, qtProduto/*,categoria_id*/, descricao, ativo from tb_produtos1 inner join tb_categorias on tb_categorias.id = tb_produtos1.categoria_id;
