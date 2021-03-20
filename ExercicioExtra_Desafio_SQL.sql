create database db_jaqueline_minha_casa_mais_bonita;

use db_jaqueline_minha_casa_mais_bonita;
create table tb_categoria (
id bigint auto_increment,
movel varchar (30) not null,
cor varchar (30) not null,
Marca varchar  (30) not null,
primary key (id)
);

create table tb_produto (
id bigint auto_increment,
nome varchar (30) not null,
peso float not null,
valor float not null,
premontado boolean,
qtestoque int not null,
id_conect_categoria bigint,
primary key (id),
Foreign key (id_conect_categoria) references tb_categoria (id)
);

create table tb_usuario (
id bigint auto_increment,
nome varchar (50) not null,
idade int not null,
email varchar (50) not null,
telefone int (11) not null,
pgtvista boolean not null,
primary key (id)
);

insert into tb_categoria (movel, cor, marca) values ("Cadeira", "Marrom", "Sandys"), ("Sofá", "vermelho", "Marrocos"), ("Mesa", "Carvalho", "Pegasu"),
("Poltrona", "Azul", "Kolis"), ("Banheira", "Branca", "Gezus");
select * from tb_categoria;

insert into tb_produto (nome, peso, valor, premontado,qtestoque,id_conect_categoria) values 
("Conjunto Flamingus", 10, 29.90, true, 5, 1), ("Conjunto Rammus", 20, 119.90, false, 7, 2),
("Almoço Feliz", 22, 99.90, false, 17, 2), ("PoltronaLuxuosa", 30, 519.90, false, 8, 4),
("Banho Alegre", 15, 149.90, true, 3, 5), ("Cadeira Firmeza", 10, 19.98, true, 2, 1),
("Sofá pompom", 40, 239.90, false, 15, 2), ("Banheira Rommana", 30, 189.90, false, 4, 5);
select * from tb_produto;

insert into tb_usuario (nome, idade, email, telefone, pgtvista) values ("Jucirene", 25, "jucirene@gmail.com", 985659885, true),
("Maria Zoana", 30, "mariazezinha@gmail.com", 985859685, false),("Roberta Nones", 27, "htinha@gmail.com", 986852335, true),
("Kaio Conka", 45, "kaioconkalol@hotmail.com", 977665525, false),("Orongus Jacinto", 22, "jacintooro@gmail.com", 985334499, true);
select * from tb_usuario;

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 50;

select * from tb_produto where nome like "%B%";

select * from tb_produto where nome like "%C%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_conect_categoria;

-- faça um select que retorne a média de preços dos produtos;

select avg (valor) from tb_produto;

-- faça um select que retorne a soma de preços dos produtos;

select sum(valor) from tb_produto;

-- faça um select que quantidade de produtos cadastrados na tabela

select count(id) from tb_produto;

select * from tb_categoria where movel like "%cadeira%";


