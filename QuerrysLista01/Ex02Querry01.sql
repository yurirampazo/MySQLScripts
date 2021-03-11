/*Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/
CREATE database db_ecommerce;

USE db_ecommerce;

CREATE table tb_produtoss (
id bigint auto_increment,
nome varchar(50) not null,
valor float not null,
ano_colecao int,
cor varchar(50) not null,
marca varchar (50) not null,
primary key(id)
);

INSERT into tb_produtos(nome,valor,ano_colecao, cor, marca) values ("Air Force",299.99,2020,"Preto","Nike");
INSERT into tb_produtos(nome,valor,ano_colecao, cor, marca) values ("Gimini 3 ",699.99,2021,"Verde","Under Armour");
INSERT into tb_produtos(nome,valor,ano_colecao, cor, marca) values ("Fortis 3 ",699.99,2021,"Verde","Under Armour");
INSERT into tb_produtos(nome,valor,ano_colecao, cor, marca) values ("Ultimate 3 ",699.99,2021,"Verde","Under Armour");
INSERT into tb_produtos(nome,valor,ano_colecao, cor, marca) values ("Assert 3 ",699.99,2021,"Verde","Under Armour");
INSERT into tb_produtos(nome,valor,ano_colecao, cor, marca) values (" Mercurial ",399.99,2021,"AMARELO","Nike");
INSERT into tb_produtos(nome,valor,ano_colecao, cor, marca) values ("Adidas Classic ",499.99,2021,"ROSA","Adidas");
SELECT * from tb_produtos;

SELECT * from tb_produtos where valor > 500;

SELECT * from tb_produtos where valor < 500;

UPDATE  tb_produtos set tb_produtos.cor = "Azul" where id = 2; 
SELECT * from tb_produtos;
