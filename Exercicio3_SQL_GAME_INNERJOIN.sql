create database db_farmacia_do_bem;
use db_farmacia_do_bem;
create table tb_categoria (
id bigint auto_increment,
droga varchar (30),
higiene varchar (30),
alimento varchar (30),
primary key (id)
);
drop table tb_produto;
create table tb_produto (
id bigint auto_increment,
nome varchar (30) not null,
quantidade int not null,
receita boolean,
promocao boolean,
valor float not null,
id_conect_categoria bigint not null,
primary key (id),
foreign key (id_conect_categoria) references tb_categoria (id)
);

insert into tb_categoria (droga, higiene, alimento) values ("SIM","NÃO","NAO"), ("SIM","SIM","NAO"),("NAO","SIM","NAO"),
("NAO","NAO","SIM"),("NAO","NAO","NAO");
select * from tb_categoria;
select * from tb_produto;
insert into tb_produto (nome, quantidade, receita, promocao, valor, id_conect_categoria) values ("Sabonete Cravo", 10, false, true, 29.99, 3), 
("Certralina", 50, true, false, 99.19, 1), ("Brinquedo Kids", 5, false, true, 89.80, 5), ("Bala halls", 10, false, true, 59.99, 4),
("VitaminaCabelo", 15, false,false, 10.99, 2);
insert into tb_produto (nome, quantidade, receita, promocao, valor, id_conect_categoria) values ("Sabonete Pés", 80, false, true, 19.99, 3), 
("Fluoxetina", 50, true, false, 79.19, 1), ("Brinquedo wow", 7, false, true, 69.80, 5);

select * from tb_produto where valor > 50.00;
select * from tb_produto where valor between 3  and 60 ;
select * from tb_produto where nome like "%B%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_conect_categoria;

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_conect_categoria where higiene like "%SIM%";