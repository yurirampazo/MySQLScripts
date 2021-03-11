-- criar um bando de dados (Comandos em maiusculo para ajudar, mas o sistema reconhece minusculo)
create database db_generation_th;

use db_generation_th;

CREATE table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
salario float not null,
funcao varchar(255) not null,
especialidade varchar(255) not null,
primary key(id)
);

INSERT into tb_funcionarios(nome,idade,salario) values ("Eduardo","28","5000","Instrutor","Data Base");
INSERT into tb_funcionarios(nome,idade,salario) values ("Jennifer","19","7000","Instrutora","Front-End");
INSERT into tb_funcionarios(nome,idade,salario) values ("Stefany","20","5500","Instrutora","Back-End");

SELECT * from tb_funcionarios;
UPDATE tb_funcionarios set tb_funcionarios.salario = 8000 where id = 2; 
SELECT * from tb_funcionarios where salario > 2000;
SELECT * from tb_funcionarios where salario < 2000;
ALTER table tb_funcionarios
ADD descricao varchar(255);

ALTER table tb_funcionarios CHANGE descricao descricao_funcionarios varchar(255);
DROP column descricao_funcionarios;
DELETE from tb_funcionarios where id = 1;
