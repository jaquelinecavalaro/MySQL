create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
	id bigint auto_increment,
	nome varchar (30) not null,
	valor float  not null,
	peso float not null,
	cor varchar (30) not null,
	primary key (id)
    
);
insert into tb_produtos (nome, valor, peso, cor) values ("Camiseta", 29.99, 2.0, "Branca");
insert into tb_produtos (nome, valor, peso, cor) values ("Camiseta", 29.99, 2.0, "Roxa");
insert into tb_produtos (nome, valor, peso, cor) values ("Bota", 899.99, 8.0, "Preta");
insert into tb_produtos (nome, valor, peso, cor) values ("Camiseta", 29.99, 2.0, "Rosa");
insert into tb_produtos (nome, valor, peso, cor) values ("Camiseta", 29.99, 2.0, "Azul");
insert into tb_produtos (nome, valor, peso, cor) values ("Colar diamante", 2999.99, 2.0, "Branca");
insert into tb_produtos (nome, valor, peso, cor) values ("Sandalia", 29.99, 8.0, "Verde");
insert into tb_produtos (nome, valor, peso, cor) values ("Camiseta", 29.99, 2.0, "Branca");

select*from tb_produtos where valor > 500.00;
select*from tb_produtos where valor < 500.00;

update tb_produtos set valor = 39.99 where id=8;

select * from tb_produtos;
