/*Atividade 6
Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra J.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria Java).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/
/*Atividade 5
Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos
(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica).
Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/
CREATE database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

CREATE table tb_categoria (
id bigint auto_increment,
descricao varchar(55) not null,
ativo boolean not null,
desconto boolean not null,
primary key(id)
);

INSERT tb_categoria (descricao,ativo,desconto) value ("Back-End",true,false);
INSERT tb_categoria (descricao,ativo,desconto) value ("Data Base",true,true);
INSERT tb_categoria (descricao,ativo,desconto) value ("Front-End",true,true);
SELECT * from tb_categoria;

CREATE table tb_produto(
id bigint auto_increment,
nome varchar(55) not null,
preco decimal not null,
qtProduto int not null,
promocao boolean not null,
parceiro varchar(55) not null,
foco varchar(55) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

INSERT tb_produto (nome,preco,qtProduto,promocao,parceiro,foco,categoria_id) value ("Back-End:Introdução",45.00, 500, false, "Alura", "Reforço",1);
INSERT tb_produto (nome,preco,qtProduto,promocao,parceiro,foco,categoria_id) value ("Data Base: Introdução", 20.00,300, true, "Udemy", "Introdução",2);
INSERT tb_produto (nome,preco,qtProduto,promocao,parceiro,foco,categoria_id) value ("Front-End: Introdução", 40.00,450, true, "RocketSeat", "Fixação",3);
INSERT tb_produto (nome,preco,qtProduto,promocao,parceiro,foco,categoria_id) value ("Back-End:Intermediario",45.00, 500, false, "Alura", "Revisão",1);
INSERT tb_produto (nome,preco,qtProduto,promocao,parceiro,foco,categoria_id) value ("Data Base: Intermediario", 20.00,300, true, "Udemy", "Revisão",2);
INSERT tb_produto (nome,preco,qtProduto,promocao,parceiro,foco,categoria_id) value ("Front-End: Intermediario", 40.00,450, true, "RocketSeat", "Fixação",3);
INSERT tb_produto (nome,preco,qtProduto,promocao,parceiro,foco,categoria_id) value ("Data Base: Avançado", 20.00,300, true, "Udemy", "Especificação",2);
INSERT tb_produto (nome,preco,qtProduto,promocao,parceiro,foco,categoria_id) value ("Front-End: Avancado", 40.00,450, true, "RocketSeat", "Especificação",3);
SELECT * from tb_produto;

SELECT * from tb_produto where preco > 50;
SELECT * from tb_produto where preco between 3 and 60;
SELECT * from tb_produto where nome like "%c%";
SELECT * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
SELECT nome,descricao,preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where descricao like "%Back-End%";