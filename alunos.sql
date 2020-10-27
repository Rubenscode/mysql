create database db_escola;

use db_escola;

create table tb_alunos(
RA bigint auto_increment,
nome varchar(255) not null,
idade int not null,
turma varchar(255) not null,
mediafinal decimal(10,2) not null, 
primary key (RA)
);

insert into tb_alunos(nome, idade, turma, mediafinal) values ("Rubens", 17, "B5", 10.00);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Rui", 10, "B5", 6.75);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Antonio", 7, "B4", 7.25);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Rita", 7, "B4", 5.50);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Valentin", 11, "B6", 6.00);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Sabrina", 9, "B5", 7.75);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Andreia", 9, "B5", 6.75);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Rafael", 7, "B4", 8.75);

select * from tb_alunos;

select * from tb_alunos where mediafinal > 6;
select * from tb_alunos where mediafinal < 6;

update tb_alunos set mediafinal = 6.50 where RA = 5;

select * from tb_alunos