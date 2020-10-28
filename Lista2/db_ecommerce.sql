create database db_ecommerce;

use db_ecommerce;

create table tb_categoria (
	id int auto_increment,
    pre_venda boolean,
    frete_gratis boolean,
	cupom_desconto boolean,
    
	primary key(id)
);

create table tb_produto (
	id int auto_increment,
    nome varchar(255) not null,
	marca varchar(25) not null,
    preco decimal(10,2) not null,
    quantidade int not null,
    cor varchar(25),
    categoria_id int not null,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria (pre_venda, frete_gratis, cupom_desconto) values (true, true, false);
insert into tb_categoria (pre_venda, frete_gratis, cupom_desconto) values (false, true, true);
insert into tb_categoria (pre_venda, frete_gratis, cupom_desconto) values (true, false, false);
insert into tb_categoria (pre_venda, frete_gratis, cupom_desconto) values (false, true, false);
insert into tb_categoria (pre_venda, frete_gratis, cupom_desconto) values (false, false, true);


insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Smartphone 128gb", "Asus", 1000.00, 10, "Vermelho", 1);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Smart TV 4k 60 Polegadas", "Xiaomi", 2000.00, 50, "Rose", 2);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Mini PC", "HP", 2000.00, 4, "Preto", 3);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Notebook Alien", "Dell", 2000.00, 16, "Laranja", 4);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Secador 1200W", "Philco", 128.00, 11, "Cherry", 2);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Smartphone 16XS 128gb", "Meizu", 2000.00, 30, "Coral", 5);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Smart TV 80 Polegadas", "Samsung", 6000.00, 2, "Transparente", 1);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Google Pixel 3 XL", "Google", 3000.00, 7, "Dourado", 1);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Xbox One", "Microsoft", 2500.00, 7, "Branco", 1);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Smart TV 4k 60 Polegadas", "Sony", 2000.00, 7, "Vermelho", 5);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Nintendo Switch", "Nintendo", 1300.00, 10, "Azul", 2);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Smart TV Cristal 42 Polegadas", "LG", 2000.00, 5, "Preto", 5);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Smartphone P20 64gb", "Huawei", 2100.00, 9, "Vermelho", 2);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Smartphone 17th Pro 256gb", "Meizu", 5000.00, 25, "Midnight Black", 4);
insert into tb_produto (nome, marca, preco, quantidade, cor, categoria_id) values ("Smartphone P30 256gb", "Huawei", 2500.00, 1, "Aurora", 3);

select * from tb_produto where preco > 2000;
select * from tb_produto where preco >= 1000 and preco <= 2000;

select * from tb_produto where nome like "c%";
select * from tb_produto where nome like "%c%";