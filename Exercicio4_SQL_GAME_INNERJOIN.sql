create database db_cidade_das_carnes;
-- exercicio 4 inner join
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
Carne boolean,
frango boolean,
embutido boolean,
marca varchar (30) not null,
primary key (id)
);

create table tb_produto (
id bigint auto_increment,
nome varchar (30) not null,
valor float not null,
balcao boolean,
promocao boolean,
id_conect_categoria bigint,
primary key (id),
foreign key (id_conect_categoria) references tb_categoria (id)
);

insert into tb_categoria (carne, frango, embutido, marca) values (true, false, false, "Sadia"), (false,true,false, "Perdigão"), (false,false,true, "Seara"),
(true, false, false, "Na brasa"), (false,true,true, "Sódio");
select * from tb_categoria;

insert into tb_produto (nome, valor, balcao, promocao, id_conect_categoria) values ("Acem", 59.99, true, true, 1), ("Asa", 29.99, true, false, 2),("Linguiça calabreza", 19.50, false, true, 3),
("Picanha", 89.99, true, false, 4), ("salsicha de frango", 25.30, false, false, 5), ("Cupim", 49.58, true, false, 1),("mortadela", 10.99, false, true, 3),
("Coxa", 79.19, true, false, 2);
select * from tb_produto;

select * from tb_produto where valor >50.00;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_conect_categoria;

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_conect_categoria where carne = true;

