/*Atividade

Crie um banco de dados para um serviço de uma loja de móveis e decoração, o nome do
banco deverá ter o seguinte: db_nome minha_casa_mais_bonita, onde o sistema trabalhará
com as informações dos produtos desta loja.*/
CREATE database db_nome_minha_casa_mais_bonita;
-- O sistema trabalhará com 3 tabelas tb_produto e tb_categoria e tb_usuario.
USE db_nome_minha_casa_mais_bonita;
/*siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta loja.*/
CREATE table tb_categoria(
id bigint auto_increment,
tipo varchar(55) not null,
entrega varchar(55) not null,
frete boolean not null,
primary key(id)
);
/*Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desta loja(não esqueça de criar
a foreign key de tb_categoria nesta tabela).*/
CREATE table tb_produto(
nome varchar(255) not null,
preco decimal not null,
quantidade int not null,
desconto boolean not null,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria(id)
);
/*Crie a tabela Usuario e utilize a habilidade de abstração e determine 5 atributos relevantes
dos tb_usuario para se trabalhar com o serviço desta loja.*/
CREATE table tb_usuario(
id bigint auto_increment,
nome varchar(255) not null,
email varchar(255) not null,
senha varchar(255) not null,
idade int not null,
localizacao varchar(255) not null,
primary key(id)
);
-- Popule atabela Categoria com até 5 dados.
INSERT tb_categoria (tipo,entrega,frete) values ("Eletrodomestico","SEDEX",true);
INSERT tb_categoria (tipo,entrega,frete) values ("Móveis","SEDEX",true);
INSERT tb_categoria (tipo,entrega,frete) values ("Eletronico","TotalExpress",true);
INSERT tb_categoria (tipo,entrega,frete) values ("Vidros","Kangu",true);
INSERT tb_categoria (tipo,entrega,frete) values ("Telhas","SEDEX",true);
-- Popule a tabela Produto com até 8 dados.
INSERT tb_produto (nome, preco,quantidade,desconto,categoria_id) values ("Televisão Samsung",400.00,500,true,3);
INSERT tb_produto (nome, preco,quantidade,desconto,categoria_id) values ("Geladeira",550.00,1000,true,1);
INSERT tb_produto (nome, preco,quantidade,desconto,categoria_id) values ("Sofá Retrátil",654.00,800,false,2);
INSERT tb_produto (nome, preco,quantidade,desconto,categoria_id) values ("Notebook Acer",3000,500,true,3);
INSERT tb_produto (nome, preco,quantidade,desconto,categoria_id) values ("Box Vidro Incolor",140.00,1000,true,4);
INSERT tb_produto (nome, preco,quantidade,desconto,categoria_id) values ("Telha de Concreto	",3.00,10000,true,5);
-- Popule atabela Usuario com até 5 dados.
INSERT tb_usuario (nome, email,senha,idade,localizacao) values ("Heitor","hauss@gmail.com","senha123",19,"São Roque");
INSERT tb_usuario (nome, email,senha,idade,localizacao) values ("Karen","karenkl@gmail.com","felicidade",23,"Sorocaba");
INSERT tb_usuario (nome, email,senha,idade,localizacao) values ("Robert","robertvictoriano@gmail.com","bizarro987",22,"Mairinque");
INSERT tb_usuario (nome, email,senha,idade,localizacao) values ("Gabriela","gmo@gmail.com","gohanhusky",22,"São José dos Campos");
INSERT tb_usuario (nome, email,senha,idade,localizacao) values ("Fernando","skymiller@gmail.com","miller123",21,"São Roque");

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * from tb_produto where preco > 50;
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * from tb_produto where preco between 3 and 60;
-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
SELECT * from tb_produto where nome like "%b%";
-- Faça um select utilizando LIKE buscando os Usuários com a letra C.
SELECT * from tb_produto where nome like "%c%";
-- Faça um um select com Inner join entre tabela categoria e produto.
SELECT tb_produto.nome, tb_produto.preco, tb_produto.quantidade, tb_produto.desconto, tb_categoria.tipo, tb_categoria.frete, tb_categoria.entrega from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
-- faça um select que retorne a média de preços dos produtos;
SELECT avg (preco) from tb_produto;
-- faça um select que retorne a soma de preços dos produtos;
SELECT sum(preco) from tb_produto;
-- faça um select que quantidade de produtos cadastrados na tabela
SELECT sum(quantidade) from tb_produto;
-- Faça um select onde traga todos os Produtos de uma categoria específica
SELECT tb_produto.nome, tb_produto.preco, tb_produto.quantidade, tb_produto.desconto, tb_categoria.tipo, tb_categoria.frete, tb_categoria.entrega from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.tipo like "%Eletrodomestico%";
/* Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/

/*salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/