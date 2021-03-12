/*Atividade 3
Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra B.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/
CREATE database db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE table tb_categoria(
id bigint auto_increment,
descricao varchar(55) not null,
estoque_positivo boolean not null,
primary key(id)
);
INSERT tb_categoria (descricao,estoque_positivo) value ("Shampoo",true);
INSERT tb_categoria (descricao,estoque_positivo) value ("Desodorante",true);
INSERT tb_categoria (descricao,estoque_positivo) value ("Remédio",true);
INSERT tb_categoria (descricao,estoque_positivo) value ("Suplemento",true);
SELECT * from tb_categoria;
CREATE table tb_produto(
id bigint auto_increment,
nome varchar (55) not null,
preco decimal (55) not null,
qtProduto int not null,
generico boolean not null,
promocao boolean not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);
INSERT tb_produto (nome, preco, qtProduto, generico, promocao, categoria_id) value ("Rexona",15.00,50,false,true,2);
INSERT tb_produto (nome, preco, qtProduto, generico, promocao, categoria_id) value ("Clear",17.00,30,false,true,1);
INSERT tb_produto (nome, preco, qtProduto, generico, promocao, categoria_id) value ("Dipirona",5.00,100,true,true,3);
INSERT tb_produto (nome, preco, qtProduto, generico, promocao, categoria_id) value ("Whey-ISOLADO",99.00,100,true,true,4);
INSERT tb_produto (nome, preco, qtProduto, generico, promocao, categoria_id) value ("Buspanil",20.00,100,true,true,3);
SELECT * from tb_produto where preco > 50;
SELECT * from tb_produto where preco between 3 and 60;
SELECT * from tb_produto where nome like "%b%";

SELECT nome,descricao,estoque_positivo,preco,qtProduto,generico,promocao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
