create database bd_escola;

use bd_escola;
create table tb_alunos (
id int auto_increment,
nome varchar (30) not null,
idade int not null,
sala int not null,
nota float not null,
primary key (id)
);

insert into tb_alunos (nome, idade, sala, nota) values ("Joaquina", 10, 1, 5);
insert into tb_alunos (nome, idade, sala, nota) values ("Cirilo", 12, 1, 10);
insert into tb_alunos (nome, idade, sala, nota) values ("Japa", 10, 2, 9);
insert into tb_alunos (nome, idade, sala, nota) values ("Casa", 11, 1, 5);
insert into tb_alunos (nome, idade, sala, nota) values ("Kombi", 10, 1, 7);
insert into tb_alunos (nome, idade, sala, nota) values ("Jorge", 09, 2, 5);
insert into tb_alunos (nome, idade, sala, nota) values ("Ariana", 10, 1, 6);
insert into tb_alunos (nome, idade, sala, nota) values ("Lady gaga", 09, 2, 8.5);

select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;

update tb_alunos set nome = "Joaninha" where id = 8;

select * from tb_alunos;

