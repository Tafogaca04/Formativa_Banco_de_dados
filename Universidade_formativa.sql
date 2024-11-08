create database EM;
USE EM;

create table Universidade(
id_uni int primary key auto_increment,
nome varchar (255) not null,
telefone varchar (50),
cidade varchar(255),
bairro varchar(255),
rua varchar(200),
CEP varchar(200),
numero int
);

insert into Universidade (nome,telefone,cidade,bairro,rua,CEP,numero)
values  ("Fuvest","(11)9987-6543","São Paulo","Vila Nova Era","Rua estudantil","18-305-910",105),
 ("Unicamp","(11)9987-5432","Campinas","Vila Educação","Rua Saber mais","18-987-876",300),
  ("UNSP","(11)9987-6873","São Paulo","Vila Moderna","Rua da graduação","15-456-876",1287),
   ("Facem","(11)9978-6543","Soracaba","Vila Aliança ","Rua formandos","12-987-654",29),
    ("UFMG","(31) 3409-5000","Pampulha","Vila Minera","Rua Pres. Antônio Carlos","20-305-870",6627);
    
    create table Estudante(
    id_estudante int primary key auto_increment,
    nome varchar (255) not null,
   telefone varchar (50),
   cidade varchar(255),
   bairro varchar(255),
   rua varchar(200),
   CEP varchar(200),
  numero int,
  id_uni int,
  foreign key (id_uni) references Universidade (id_uni)
  );
  
  insert into Estudante (nome,telefone,cidade,bairro,rua,CEP,numero,id_uni)
  values  ("Marcela Lopes","(31) 3409-7650","Pampulha","Vila Delara","Rua Pres. Mario Dias","15-678-870",76,5),
  ("Douglas Augusto","(11) 99876-7650","Curitiba","Vila Vargas","Rua Prof. Maria Azevedo","12-639-876",54,2),
  ("Lucas Martins","(15) 9985-7650","Itararé","Vila Regina","Rua Gonsalves Dias","20-678-870",80,1),
  ("Lívia Medeiros","(15) 99678-7650","Sorocaba","Vila Munhoz","Rua Pres. Prudente","18-763-122",44,3),
  ("Manuella Campos","(31) 99873-4350","Lavrinhas","Vila A","Rua Trem bom","19-129-340",39,4);
  
  select * from Universidade;
  select * from Estudante;
  
  -- alterar nome  o 1° estudante --
update Estudante
set nome ="Marcela Ribeiro"
where  id_estudante = "1";

-- alterar o nome da terceira Universidade --
update Universidade
set nome = "UFRJ"
where id_uni= "3";

-- excluir o 5  estudante --
delete from Estudante
where id_estudante = 5;

-- listar com join --
SELECT
Universidade.nome as Nome_Universidade,
Estudante.nome as Nome_Estudante
from 
Universidade
inner join 
Estudante on Estudante.id_uni = universidade.id_uni;

-- view --
create view vw_universidade_estudo AS
select
Universidade.nome as Nome_Universidade,
Estudante.nome as Nome_Estudante
from 
Universidade
inner join 
Estudante on Estudante.id_uni = universidade.id_uni;

