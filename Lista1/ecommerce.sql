create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(50) not null,
    preco decimal(10,2) not null,
    quantidade bigint not null,
    marca varchar(50) not null,
    primary key (id)
);

insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera Instax Mini", 450.00, 10, "Polaroid");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera Mini 11", 480.00, 10, "Instax");   
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera Fujifilm", 450.00, 3, "Instax");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera T5I", 430.00, 5, "Canon");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera D5600", 490.99, 10, "Nikon");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera Sony Alpha", 1000.99, 8, "Sony");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera T7", 1500.99, 11, "EOS");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera SL1", 1800.99, 6, "Canon");    

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set quantidade = 9 where id =1;

select * from tb_produtos;