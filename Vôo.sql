create database Aeronave_1e;
use Aeronave_1e;

-- criação da tabela --
create table Aeronave(
id_nave int primary key auto_increment,
nome varchar(255) not null,
comunicador varchar (255),
destino varchar (255)
);

insert into Aeronave (nome,comunicador,destino)
value("Aviação Nativa","comunicador_01","Bélgica"),
("Azul","comunicador_02","Londres"),
("Avianca","comunicador_03","Califórnia"),
("Asa Branca","comunicador_04","Austrália"),
("Plane max","comunicador_05","Itália");

create table Passageiro (
id_pass int primary key auto_increment,
nome varchar(255) not null,
telefone varchar (50),
endereco varchar(255),
id_nave int,
foreign key(id_nave) references Aeronave (id_nave)
);
insert into Passageiro (nome,telefone,endereco,id_nave)
VALUES ("Albert Eisten","(12)9987-3477","123 Rua da Ciência",1),
("Marie Curie","(12)9956-5647","456 Avenida Radiação",1),
("Isac Newton","(12)9983-6577","789 Praça Gravidade",2),
("Albert Eisten","(12)9976-3123","101 Rua da Ciência",3),
("Galileu Galilei","(12)9988-5432","102 Avenida da Astronomia",4),
("Louis Paster","(12)9987-2277","103 Avenida Pasteriozação",5);

-- consultar tabela --
select * from Aeronave;
select * from Passageiro;

-- alterar nome --
update Passageiro
set nome ="Alberto Roberto"
where  id_pass = "1";

-- alterar o nome da terceira areonave --
update Aeronave
set nome = "Areonave alpha"
where id_nave = "3";

-- deletar o 4 passageiro --- 
delete from Passageiro
where id_pass = 4;

-- listar passageiro com join --
SELECT
passageiro.nome  as Nome_Passageiro,
aeronave.nome as Nome_Aeronave,
aeronave.destino as Destino_Aeronave
from 
Passageiro
inner join 
Aeronave on passageiro.id_nave = aeronave.id_nave;

-- view --
create view vw_passageiros_voa AS
SELECT
passageiro.nome  as Nome_Passageiro,
aeronave.nome as Nome_Aeronave,
aeronave.destino as Destino_Aeronave
from 
Passageiro
inner join 
Aeronave on passageiro.id_nave = aeronave.id_nave;

select * from vw_passageiros_voa;

-- importar ---
