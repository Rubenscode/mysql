create database db_RH2;

use db_RH2;

create table tb_cargo (
	id bigint auto_increment,
    participacao_lucro boolean not null,
    funcao varchar(30) not null,
    salario decimal (10,2) not null,
    
    primary key(id)
);

create table tb_funcionario (
	id int auto_increment,
    nome varchar(255) not null, 
    data_admissao date not null,
	escala varchar(5) not null,
	vencimento_ferias boolean,
    cargo_id bigint not null,
    
    primary key(id),
    foreign key(cargo_id) references tb_cargo(id)
);

insert into tb_cargo (participacao_lucro, funcao, salario) values (true, "Desenvolvedor Júnior - Java", 3000.00);
insert into tb_cargo (participacao_lucro, funcao, salario) values (true, "Desenvolvedor Sênior - Java", 11000.00);
insert into tb_cargo (participacao_lucro, funcao, salario) values (true, "Scrum Master", 10000.00);
insert into tb_cargo (participacao_lucro, funcao, salario) values (false, "Gerente Administrativo", 5000.00);
insert into tb_cargo (participacao_lucro, funcao, salario) values (false, "Recursos Humanos - RH", 1000.00);

insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Rubens", "2020-12-18", "5x2", false, 1);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Apollo", "2019-02-05", "5x1", true, 1);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Caio", "2019-03-07", "6x1", true, 1);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Sabrina", "2020-05-15", "5x2", true, 1);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Estela", "2015-10-15", "5x2", true, 5);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Gisele", "2010-12-05", "6x2", true, 2);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Ana", "2019-11-15", "5x1", true, 1);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Diana", "2017-12-15", "5x2", true, 2);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Mauricio", "2020-03-05", "5x1", true, 1);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Lucas", "2016-05-05", "5x2", true, 5);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Nicolas", "2018-08-05", "6x1", true, 1);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Davi", "2014-09-05", "5x2", true, 3);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Bianca", "2018-09-05", "6x1", true, 5);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Manuela", "2005-01-05", "5x2", true, 2);
insert into tb_funcionario (nome, data_admissao, escala, vencimento_ferias, cargo_id) values ("Erisvan", "2017-12-05", "5x2", true, 4);

select * from tb_cargo where salario > 2000;
select * from tb_cargo where salario >= 1000 and salario <= 2000;

select * from tb_funcionario where nome like "c%";
select * from tb_funcionario where nome like "%c%";