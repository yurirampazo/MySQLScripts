/*Atividade 4

Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o
seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos
produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não
esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/
CREATE database db_cidade_das_carnes;
use db_cidade_das_carnes;

CREATE table tb_categoria(
id bigint auto_increment,
descricao varchar (55) not null,
ativo boolean not null,
primary key(id)
);
INSERT tb_categoria (descricao, ativo) value ("Bovino",true);
INSERT tb_categoria (descricao, ativo) value ("Suíno",true);
INSERT tb_categoria (descricao, ativo) value ("Aves",true);
INSERT tb_categoria (descricao, ativo) value ("Pertence Feijoada",true);
INSERT tb_categoria (descricao, ativo) value ("Imbtidos",true);
INSERT tb_categoria (descricao, ativo) value ("Outros",true);

SELECT * from tb_categoria;
CREATE table tb_produto(
id bigint auto_increment,
nome varchar (55) not null,
preco decimal (55) not null,
qtProduto int not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

INSERT tb_produto (nome, preco, qtProduto, categoria_id) value ("Asa",40.00,30,3);
INSERT tb_produto (nome, preco, qtProduto, categoria_id) value ("Picanha",20.00,30,1);
INSERT tb_produto (nome, preco, qtProduto, categoria_id) value ("Costela",30.00,30,2);
INSERT tb_produto (nome, preco, qtProduto, categoria_id) value ("Hamburguer",35.00,30,5);
INSERT tb_produto (nome, preco, qtProduto, categoria_id) value ("Alcatara",51.00,30,5);
INSERT tb_produto (nome, preco, qtProduto, categoria_id) value ("Coxa",40.00,30,3);

SELECT * from tb_produto where preco > 50;
SELECT * from tb_produto where preco between 3 and 60;
SELECT * from tb_produto where nome like "%c%";

SELECT * from tb_produto where categoria_id = 3;

/*SELECT COUNT(*) from tb_produto;
SELECT SUM(preco) from tb_produto;
SELECT SUM(qtProduto) from tb_produto;
SELECT avg(preco) from tb_produto;
SELECT avg(qtProduto) from tb_produto;*/

SELECT nome, preco, qtProduto, descricao, ativo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
