create database db_info_funcionarios;

use db_info_funcionarios;

create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    salario decimal(10,2) not null,
    funcao varchar(255) not null,
    contrato boolean,
    primary key (id)
    );

insert into tb_funcionarios(nome, salario, funcao, contrato) values ("Amadeu", "5000.00" , "Desenvolvedora Python", true);
insert into tb_funcionarios(nome, salario, funcao, contrato) values ("Celeste", "1000.00" , "Auxiliar administrativo", true);
insert into tb_funcionarios(nome, salario, funcao, contrato) values ("Mariana", "5000.00" , "Desenvolvedor C#", true);
insert into tb_funcionarios(nome, salario, funcao, contrato) values ("Fernanda", "7000.00" , "Desenvolvedor FullStack JavaScript", true);
insert into tb_funcionarios(nome, salario, funcao, contrato) values ("Apollo", "15000.00" , "Scrum Master", true);

select * from tb_funcionarios;
select * from tb_funcionarios where salario > "2000.00";
select * from tb_funcionarios where salario < "2000.00";

update tb_funcionarios set salario = 1800.00 where id = 5;

select * from tb_funcionarios;
