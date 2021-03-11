CREATE database db_ecommerce;

USE db_ecommerce;

CREATE table tb_produtos (
id bigint auto_increment,
nome varchar(50) not null,
valor float not null,
ano_colecao int,
cor varchar(50) not null,
marca varchar (50) not null,
primary key(id)
);
