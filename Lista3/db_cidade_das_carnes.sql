create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria (
	id int auto_increment,
    tipo varchar(25) not null,
    disponivel boolean not null,
    descricao varchar(255),
    primary key(id)
);

create table tb_produto (
	id int auto_increment,
	nome varchar(50) not null,
    estoque int not null,
    preco_kg decimal(10,2) not null,
    categoria_id int not null,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria (tipo, disponivel, descricao) values ("Carne de primeira", true, "As carnes de primeira são conhecidas por terem uma textura mais macia e estão localizadas nas regiões menos usadas no corpo dos bois, portanto proporcionam cortes de maior qualidade e com bem menos gordura.");
insert into tb_categoria (tipo, disponivel, descricao) values ("Carne de segunda", true, "As carnes de segunda estão localizadas nas regiões mais expostas dos animais, sendo um pouco mais duras e rígidas. Contudo, podem ser facilmente amaciadas com a ajuda de um martelo.");
insert into tb_categoria (tipo, disponivel, descricao) values ("Carne de terceira", true, "As carnes de terceira, que possuem uma maior quantidade de gordura e nervos. Além disso, por serem mais duras, costumam ser usadas somente em receitas específicas como a feijoada e a dobradinha.");
insert into tb_categoria (tipo, disponivel, descricao) values ("Carne sem Categoria", true, null);
insert into tb_categoria (tipo, disponivel, descricao) values ("Outros", true, "Produtos Diversos");

insert into tb_produto (nome, estoque, preco_kg, categoria_id) values ("Picanha", 100, 90.00, 1);
insert into tb_produto (nome, estoque, preco_kg, categoria_id) values ("Baby beef", 200, 74.00, 1);
insert into tb_produto (nome, estoque, preco_kg, categoria_id) values ("Acem", 250, 29.98, 2);
insert into tb_produto (nome, estoque, preco_kg, categoria_id) values ("Fraldinha", 151, 21.67, 2);
insert into tb_produto (nome, estoque, preco_kg, categoria_id) values ("Musculo", 28, 22.99, 3);
insert into tb_produto (nome, estoque, preco_kg, categoria_id) values ("Ponta de agulha", 37, 22.99, 3);
insert into tb_produto (nome, estoque, preco_kg, categoria_id) values ("Cupim", 55, 18.00, 4);
insert into tb_produto (nome, estoque, preco_kg, categoria_id) values ("Tulipa de Frango", 67, 18.00, 5);

select * from tb_produto where preco_kg > 50.00;
select * from tb_produto where preco_kg >= 3.00 and preco_kg <= 60.00;
select * from tb_produto where nome like "co%";

select nome, preco_kg, estoque as cortes_disponiveis, tb_categoria.tipo as categoria 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select nome, preco_kg, estoque as cortes_disponiveis, tb_categoria.tipo as categoria 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.tipo like "%primeira%";