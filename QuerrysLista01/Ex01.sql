/* Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionários desta empresa.
Crie uma tabela de funcionários e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionários com o salário maior do que 2000.
Faça um select que retorne os funcionários com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/
create database db_generation_rh;

use db_generation_rh;

CREATE table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
salario float not null,
primary key(id)
);

INSERT into tb_funcionarios(nome,idade,salario) values ("Eduardo","28","5000");
INSERT into tb_funcionarios(nome,idade,salario) values ("Jennifer","19","7000");
INSERT into tb_funcionarios(nome,idade,salario) values ("Stefany","20","5500");
INSERT into tb_funcionarios(nome,idade,salario) values ("Eduardo","28","5000");
INSERT into tb_funcionarios(nome,idade,salario) values ("Laro","19","7000");
INSERT into tb_funcionarios(nome,idade,salario) values ("Vitor","20","5500");

SELECT * from tb_funcionarios;
UPDATE tb_funcionarios set tb_funcionarios.salario = 8000 where id = 2; 

ALTER table tb_funcionarios
ADD descricao varchar(255);

ALTER table tb_funcionarios CHANGE descricao descricao_funcionarios varchar(255);

DELETE from tb_funcionarios where id = 1;
