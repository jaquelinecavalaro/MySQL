create database db_empresa_rh;

use db_empresa_rh;

create table tb_funcionarios (
	id bigint auto_increment,
	nome varchar (255) not null,
	idade int  not null,
	salario float not null,
	funcao varchar (255) not null,
	primary key (id)

);
insert into tb_funcionarios (nome, idade, salario, funcao) values ("xiquinho", 30, 550.50, "estagiario");
insert into tb_funcionarios (nome, idade, salario, funcao) values ("zezinho", 20, 5550.50, "C O");
insert into tb_funcionarios (nome, idade, salario, funcao) values ("xuripita", 25, 2000.00, "Recepção");
insert into tb_funcionarios (nome, idade, salario, funcao) values ("roberta", 26, 660.50, "estagiario");
insert into tb_funcionarios (nome, idade, salario, funcao) values ("jaqueline", 26, 10000.50, "modelo");

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set nome = "Jubileu" where id = 1;


