create database db_pizzaria_legal;
use db_pizzaria_leagl;

create table tb_categoria(
id bigint auto_increment,
doce boolean not null,
salgada boolean not null,
gigante boolean not null,
primary key (id)
);

create table tb_pizza (
id bigint auto_increment,
nome varchar (30) not null,
sabor varchar (30) not null,
borda boolean,
preco decimal (4.2) not null,
disponivel boolean not null,
id_conect_categoria bigint,
primary key (id)
);

alter table tb_pizza add foreign key (id_conect_categoria) references tb_categoria (id);
alter table tb_categoria add tipo varchar (30) not null;
select * from tb_categoria;

insert into tb_categoria (doce, salgada, gigante, tipo) values (true, false, false, "Chocolate");
insert into tb_categoria (doce, salgada, gigante, tipo) values (true, false, true, "Chocolate");
insert into tb_categoria (doce, salgada, gigante, tipo) values (false, true, false, "Calabreza");
insert into tb_categoria (doce, salgada, gigante, tipo) values (false, true, true, "Calabreza");
insert into tb_categoria (doce, salgada, gigante, tipo) values (true, true, true, "Romeu e Julieta");

select * from tb_categoria;

delete  from tb_categoria where id = 2;
delete  from tb_categoria where id = 3;

select * from tb_categoria;

insert into tb_pizza (nome, sabor, borda, preco, disponivel) values ("Brigatudo","Brigadeiro, nutella, ninho", true, 59.99, true);
update tb_pizza set id_conect_categoria = 1 where id = 1;
select * from tb_pizza;

insert into tb_pizza (nome, sabor, borda, preco, disponivel, id_conect_categoria) values ("CHOCOLATUDO","Brigadeiro,ganache,beijinho", true, 69.99, true, 4);
insert into tb_pizza (nome, sabor, borda, preco, disponivel, id_conect_categoria) values ("Bahiana","Calabreza, catupiry, pimenta", true, 89.99, true, 5);
insert into tb_pizza (nome, sabor, borda, preco, disponivel, id_conect_categoria) values ("Calabriza","Calabreza, ervas medicinais", true, 569.99, true, 6);
insert into tb_pizza (nome, sabor, borda, preco, disponivel, id_conect_categoria) values ("Amor a Vista","Goiabada, queijo minas", true, 269.99, true, 7);
insert into tb_pizza (nome, sabor, borda, preco, disponivel, id_conect_categoria) values ("CHOCOLATUDO","Brigadeiro,ganache,beijinho", false, 69.99, true, 4);
insert into tb_pizza (nome, sabor, borda, preco, disponivel, id_conect_categoria) values ("CHOCOLATUDO","Brigadeiro,ganache,beijinho", true, 69.99, false, 4);
insert into tb_pizza (nome, sabor, borda, preco, disponivel, id_conect_categoria) values ("chocoloco","Brigadeiro,ganache", true, 29.99, true, 1);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;
select * from tb_pizza where preco between 29  and 60 ;
select * from tb_pizza where nome like "%C%";

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.id_conect_categoria;

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.id_conect_categoria where doce = true;