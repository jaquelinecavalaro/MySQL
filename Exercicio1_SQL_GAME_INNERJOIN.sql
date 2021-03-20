create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,

vida int not null,
mana int not null,
vocacao varchar (60) not null,
primary key (id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar (30) not null,
ataque int not null,
defesa int not null,
nivel int not null,
montaria boolean not null,
tb_classe_id bigint,
primary key (id),
foreign key (tb_classe_id) references tb_classe (id)
);

alter table tb_classe add column classe varchar (30);
alter table tb_classe drop column classe;
-- populando tabela classe
insert into tb_classe (vida,mana,vocacao) values (5000, 1000, "Knight");
insert into tb_classe (vida,mana,vocacao) values (1000, 5000, "Druid");
insert into tb_classe (vida,mana,vocacao) values (1000, 5000, "Sorce");
insert into tb_classe (vida,mana,vocacao) values (2500, 2500, "Paladin");
insert into tb_classe (vida,mana,vocacao) values (5000, 5000, "Mestre");
-- populando tabela personagem
insert into tb_personagem (nome, ataque, defesa, nivel, montaria, tb_classe_id) values ("Serelepe", 1000, 5000 , 10, false, 1);
insert into tb_personagem (nome, ataque, defesa, nivel, montaria, tb_classe_id) values ("Jaqueline", 3000, 2000 , 10, true, 2);
insert into tb_personagem (nome, ataque, defesa, nivel, montaria, tb_classe_id) values ("Danielu", 4000, 1000 , 10, false, 3);
insert into tb_personagem (nome, ataque, defesa, nivel, montaria, tb_classe_id) values ("RobinHood", 5000, 0800 , 10, false, 4);
insert into tb_personagem (nome, ataque, defesa, nivel, montaria, tb_classe_id) values ("Camilla", 10000, 10000 , 100, true, 5);
-- apertei algumas teclas do teclado SEM QUERER e sumiu o 7 e o 8 , qq rolou?????
insert into tb_personagem (nome, ataque, defesa, nivel, montaria, tb_classe_id) values ("Pingola", 1000, 5000 , 10, true, 1);
insert into tb_personagem (nome, ataque, defesa, nivel, montaria, tb_classe_id) values ("Lizaa", 10000, 10000 , 10, true, 6);
insert into tb_personagem (nome, ataque, defesa, nivel, montaria, tb_classe_id) values ("Lucaas", 10000, 10000 , 10, true, 6);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000  and  2000;

select * from tb_personagem where nome like "%C%";

select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.tb_classe_id;

select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.tb_classe_id
where vocacao like "%Paladin%";

