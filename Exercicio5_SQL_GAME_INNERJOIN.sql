-- exercicio 5 inner join
create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
marca varchar (30) not null,
entrega boolean,
categoria varchar (30) not null,
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar (30) not null,
promocao boolean,
balcao boolean,
peso int not null,
valor float not null,
id_conect_categoria bigint,
primary key (id),
foreign key (id_conect_categoria) references tb_categoria(id)
);

insert into tb_categoria (marca, entrega, categoria) values ("Arruda", true, "concreto"), ("Acrebo", true, "Argamassa"), ("Ovoco", false, "Tinta"),
("Tinture", true, "Piso"), ("Carava", false, "Gesso");
select * from tb_categoria;

insert into tb_produto (nome, promocao, balcao, peso, valor, id_conect_categoria) values ("Cimento show", false, true, 80, 89.90, 1),
("Cola seco", true, false, 10, 59.90, 2), ("Colorama", false, false, 50, 189.99, 3), ("Raimbow", true, true, 59, 229.90, 3), 
("Quebra facil", false, true, 5, 19.90, 4), ("Arthemis", true, false, 7, 19.99, 5), ("Figurit", true, true, 6, 15.99, 5),
("Brilho Super", true, true, 11, 79.90, 4);
select * from tb_produto;

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_conect_categoria;

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_conect_categoria where entrega = true;

