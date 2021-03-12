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
CREATE database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

CREATE table tb_categoria (
id bigint auto_increment,
descricao varchar(55) not null,
ativo boolean not null,
desconto boolean not null,
recomendacoes varchar(55) not null,
primary key(id)
);

INSERT tb_categoria (descricao,ativo,desconto,recomendacoes) value ("Telhado",true,false,"Estudo de calha para chuva");
INSERT tb_categoria (descricao,ativo,desconto,recomendacoes) value ("Apoios",true,true,"Suportes em pilares com cimento");
INSERT tb_categoria (descricao,ativo,desconto,recomendacoes) value ("Piso",true,true,"Piso de acordo com ambiente");
SELECT * from tb_categoria;

CREATE table tb_produto(
id bigint auto_increment,
nome varchar(55) not null,
preco decimal not null,
qtProduto int not null,
promocao boolean not null,
fornecedor varchar(55) not null,
funcao varchar(55) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

INSERT tb_produto (nome,preco,qtProduto,promocao,fornecedor,funcao,categoria_id) value ("Azulejo",45.00, 500, false, "PisosSA", "Assentamento",3);
INSERT tb_produto (nome,preco,qtProduto,promocao,fornecedor,funcao,categoria_id) value ("Cimento", 20.00,300, true, "CimentosDoVovô", "Suporte",2);
INSERT tb_produto (nome,preco,qtProduto,promocao,fornecedor,funcao,categoria_id) value ("Telha Simples", 40.00,450, true, "TelhasDoNoel", "Cobertura",1);
INSERT tb_produto (nome,preco,qtProduto,promocao,fornecedor,funcao,categoria_id) value ("Telha Dupla", 70.00, 450, false, "TelhasDoNoel", "Cobertura",1);
INSERT tb_produto (nome,preco,qtProduto,promocao,fornecedor,funcao,categoria_id) value ("Cimento Votoran", 25.00, 330, true, "Votorantim Cimentos", "Suporte",2);
INSERT tb_produto (nome,preco,qtProduto,promocao,fornecedor,funcao,categoria_id) value ("Piso Laminado", 80.00, 477, false, "PisosSA", "Assentamento",3);
INSERT tb_produto (nome,preco,qtProduto,promocao,fornecedor,funcao,categoria_id) value ("Piso Laminado Premium", 80.00, 477, true, "PisosSA", "Assentamento",3);
INSERT tb_produto (nome,preco,qtProduto,promocao,fornecedor,funcao,categoria_id) value ("Telha Dupla Premium", 70.00, 450, false, "TelhasDoNoel", "Cobertura",1);
SELECT * from tb_produto;

SELECT * from tb_produto where preco > 50;
SELECT * from tb_produto where preco between 3 and 60;
SELECT * from tb_produto where nome like "%c%";
SELECT * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
SELECT nome,descricao,preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where descricao like "%Telhado%";