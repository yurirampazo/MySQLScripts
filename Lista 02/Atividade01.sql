/*Atividade 1

Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.*/

CREATE database db_generation_game_online;
use db_generation_game_online;
CREATE table tb_classe (
id bigint auto_increment,
nome varchar(50)not null,
classPower varchar(50) not null,
classStrength varchar(50) not null,
classWeakness varchar(50) not null,
primary key(id)
);

INSERT tb_classe (nome, classPower,classStrength,classWeakness) value ("Mago","Feitiços","Ataque Mágico","Defesa Física");
INSERT tb_classe (nome, classPower,classStrength,classWeakness) value ("Guerreiro","Força Física","Ataque Físico","Ataque Mágico");
INSERT tb_classe (nome, classPower,classStrength,classWeakness) value ("Assassino","Destreza","Ataque Crítico","DPS");
INSERT tb_classe (nome, classPower,classStrength,classWeakness) value ("Atirador","Dano","DPS","Resistência");
INSERT tb_classe (nome, classPower,classStrength,classWeakness) value ("Atirador","Dano","DPS","Resistência");
INSERT tb_classe (nome, classPower,classStrength,classWeakness) value ("Atirador","Dano","DPS","Resistência");
DELETE from tb_classe where id =5;
DELETE from tb_classe where id =6;
SELECT * from tb_classe;
SELECT * from tb_classe where nome like "%i%";
SELECT COUNT(*) from tb_classe;

CREATE table tb_personagem (
id bigint  auto_increment,
nomeP varchar(55) not null,
guilda varchar(55) not null,
classes_id bigint not null,
primary key (id),
foreign key (classes_id) references tb_classe (id)
);

INSERT tb_personagem (nomeP, guilda, classes_id) value ("Jack","Lengens",1);
INSERT tb_personagem (nomeP, guilda, classes_id) value ("Jane","Lengens",3);
INSERT tb_personagem (nomeP, guilda, classes_id) value ("Lety","Fairy Tail",2);
INSERT tb_personagem (nomeP, guilda, classes_id) value ("Natsu","Fairy Tail",4);




SELECT *from tb_classe;
Select * from tb_personagem;
SELECT nomeP,guilda,nome,classPower,classStrength,classWeakness from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classes_id;