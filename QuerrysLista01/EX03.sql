/*Atividade 3
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos alunos deste registro dessa escola.
Crie uma tabela alunos/a e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos alunos/a para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as alunos/a com a nota maior do que 7.
Faça um select que retorne o/as alunos/a com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE database db_escola;
USE db_escola;
CREATE table tb_alunos(
id bigint auto_increment,
nome varchar(55) not null,
idade int not null,
turma varchar(10) not null,
nota float not null,
apelido varchar (55) not null,
primary key(id)
);
INSERT into tb_alunos(nome,idade,turma,nota,apelido) values ("Larissa",20,"2º ANO-B", 10.00, "LARO");
INSERT into tb_alunos(nome,idade,turma,nota,apelido) values ("Yuri",21,"3º ANO-B", 10.00, "Play");
INSERT into tb_alunos(nome,idade,turma,nota,apelido) values ("JOSÉ",21,"3º ANO-B", 8.10, "ZÉ");
UPDATE tb_alunos set tb_alunos.idade = 25 where id = 2;
INSERT into tb_alunos(nome,idade,turma,nota,apelido) values ("Paulo",17,"3º ANO-B", 5.50, "Play");
INSERT into tb_alunos(nome,idade,turma,nota,apelido) values ("Vitor",19,"2º ANO-A", 9.50, "TÃO");
INSERT into tb_alunos(nome,idade,turma,nota,apelido) values ("Jaque",19,"2º ANO-B", 5.50, "Curaqui");
INSERT into tb_alunos(nome,idade,turma,nota,apelido) values ("Karen",23,"1º ANO-A", 6.50, "Ka");
INSERT into tb_alunos(nome,idade,turma,nota,apelido) values ("Bruna",23,"1º ANO-A", 6.50, "Brubs");
INSERT into tb_alunos(nome,idade,turma,nota,apelido) values ("Mariana",22,"1º ANO-A", 7.50, "Mari");

SELECT * from tb_alunos where nota > 7;
SELECT * from tb_alunos where nota < 7;
UPDATE tb_alunos set tb_alunos.turma = "1º ANO -B" where id = 5;
SELECT * from tb_alunos;