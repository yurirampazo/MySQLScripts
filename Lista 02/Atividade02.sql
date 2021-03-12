/*Atividade 2
Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

-- criar banco de dados 
CREATE database db_pizzaria_legal;
USE db_pizzaria_legal;
/* criar tabelas para mostrar id descrição e se ainda possui ou nao
no estoque. Ex: Parou de vender carne. Alterar carne para 1 = false*/
CREATE table tb_categoria(
id bigint auto_increment,
tamanho varchar (55) not null,
salgada boolean not null,
primary key(id)
);
INSERT tb_categoria (tamanho, salgada) value ("Brotinho",true);
INSERT tb_categoria (tamanho, salgada) value ("Média",true);
INSERT tb_categoria (tamanho, salgada) value ("Grande",true);
INSERT tb_categoria (tamanho, salgada) value ("Fatia",true);
INSERT tb_categoria (tamanho, salgada) value ("Brotinho",false);
INSERT tb_categoria (tamanho, salgada) value ("Média",false);
INSERT tb_categoria (tamanho, salgada) value ("Grande",false);
INSERT tb_categoria (tamanho, salgada) value ("Fatia",false);

SELECT * from tb_categoria;

CREATE table tb_pizza(
id bigint auto_increment,
nome varchar (55) not null,
preco decimal (55)not null,
qtProduto int not null,
ingrediente_principal varchar (55),
azeitona boolean not null,
categoria_id bigint not null,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

INSERT tb_pizza (nome, preco, qtProduto, ingrediente_principal, azeitona, categoria_id) value ("Mussarela",20.00,5,"Mussarela",true,1);
INSERT tb_pizza (nome, preco, qtProduto, ingrediente_principal, azeitona, categoria_id) value ("Calabresa",30.00,7,"Calabresa",true,2);
INSERT tb_pizza (nome, preco, qtProduto, ingrediente_principal, azeitona, categoria_id) value ("Brócolis",50.00,6,"Brócolis",true,3);
INSERT tb_pizza (nome, preco, qtProduto, ingrediente_principal, azeitona, categoria_id) value ("Frango com Catupiry",15.00,4,"Frango",true,4);
INSERT tb_pizza (nome, preco, qtProduto, ingrediente_principal, azeitona, categoria_id) value ("Brigadeiro",20.00,5,"Chocolate",false,5);
INSERT tb_pizza (nome, preco, qtProduto, ingrediente_principal, azeitona, categoria_id) value ("Prestígio",30.00,7,"Coco",false,6);
INSERT tb_pizza (nome, preco, qtProduto, ingrediente_principal, azeitona, categoria_id) value ("Leite Ninho",50.00,6,"Leite Ninho",false,7);
INSERT tb_pizza (nome, preco, qtProduto, ingrediente_principal, azeitona, categoria_id) value ("Doce de Leite",15.00,4,"Doce de Leite",false,8);


SELECT * from tb_pizza where preco > 45;
SELECT * from tb_pizza where preco between 29 and 36;
SELECT * from tb_pizza where nome like "%c%";


SELECT nome, preco, qtProduto, ingrediente_principal, azeitona from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
